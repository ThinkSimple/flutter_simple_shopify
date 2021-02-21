import 'package:flutter/material.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:graphql/client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../graphql_operations/mutations/access_token_delete.dart';
import '../../graphql_operations/mutations/customer_access_token_create.dart';
import '../../graphql_operations/mutations/customer_create.dart';
import '../../graphql_operations/mutations/customer_recover.dart';
import '../../graphql_operations/queries/get_customer.dart';
import '../../models/src/shopify_user.dart';
import '../../shopify_config.dart';

/// ShopifyAuth class handles the authentication.
class ShopifyAuth with ShopifyError {
  ShopifyAuth._();
  final GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;

  static final ShopifyAuth instance = ShopifyAuth._();

  static ShopifyUser _shopifyUser;

  static const String _shopifyKey = 'FLUTTER_SIMPLE_SHOPIFY_ACCESS_TOKEN';

  static get currentCustomerAccessToken async => (await SharedPreferences.getInstance()).getString(_shopifyKey);

  /// Tries to create a new user account with the given email address and password.
  Future<ShopifyUser> createUserWithEmailAndPassword({
    String firstName,
    String lastName,
    @required String email,
    @required String password,
    bool deleteThisPartOfCache = false,
  }) async {
    assert(email != null);
    assert(password != null);
    final MutationOptions _options =
    MutationOptions(documentNode: gql(customerCreateMutation), variables: {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    });
    final QueryResult result = await _graphQLClient.mutate(_options);
    print(result.exception.toString());
    checkForError(result);
    if((result?.data['customerCreate'] ?? const {})['customerUserErrors'] != null)
      throw(result?.data['customerCreate'] ?? const {}['customerUserErrors'].first['message']);
    final shopifyUser = ShopifyUser.fromJson(
        (result?.data['customerCreate'] ?? const {})['customer']);
    final String customerAccessToken = await _createAccessToken(email, password);
    await _setShopifyUser(customerAccessToken, _shopifyUser);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return shopifyUser;
  }

  /// Triggers the Shopify Authentication backend to send a password-reset
  /// email to the given email address, which must correspond to an existing
  /// user of your app.
  Future<void> sendPasswordResetEmail({@required String email, bool deleteThisPartOfCache = false}) async {
    assert(email != null);
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerRecoverMutation),
        variables: {'email': email});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Tries to sign in a user with the given email address and password.
  Future<ShopifyUser> signInWithEmailAndPassword(
      {@required String email, @required String password, bool deleteThisPartOfCache = false}) async {
    assert(email != null);
    assert(password != null);
    final String customerAccessToken = await _createAccessToken(email, password);
    final WatchQueryOptions _getCustomer = WatchQueryOptions(
        documentNode: gql(getCustomerQuery),
        variables: {'customerAccessToken': customerAccessToken});
    final QueryResult result = await _graphQLClient.query(_getCustomer);
    checkForError(result);
    final shopifyUser = ShopifyUser.fromJson(
        result?.data['customer']);
    await  _setShopifyUser(customerAccessToken, shopifyUser);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_getCustomer.toKey(), null);
    }
    return shopifyUser;
  }

  /// Helper method for creating the accessToken.
  Future<String> _createAccessToken(String email, String password, {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerAccessTokenCreate),
        variables: {'email': email, 'password': password});
    final QueryResult result = await _graphQLClient.mutate(_options);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return _extractAccessToken(result?.data);
  }

  /// Helper method for extracting the customerAccessToken from the mutation.
  String _extractAccessToken(Map<String, dynamic> mutationData) {
    return (((mutationData ?? const {})['customerAccessTokenCreate'] ?? const {})['customerAccessToken'] ?? const {})
    ['accessToken'];
  }

  /// Signs out the current user and clears it from the disk cache.
  Future<void> signOutCurrentUser({bool deleteThisPartOfCache = false}) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final MutationOptions _options = MutationOptions(
        documentNode: gql(accessTokenDeleteMutation),
        variables: {'customerAccessToken': _prefs.getString(_shopifyKey)});
    await _setShopifyUser(null, null);
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return result;
  }

  /// Returns the currently signed-in [ShopifyUser] or [null] if there is none.
  Future<ShopifyUser> currentUser({bool deleteThisPartOfCache = false}) async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final WatchQueryOptions _getCustomer = WatchQueryOptions(
        documentNode: gql(getCustomerQuery),
        variables: {'customerAccessToken': _prefs.getString(_shopifyKey)});
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_getCustomer.toKey(), null);
    }
    if (_shopifyUser != null) {
      return _shopifyUser;
      //TODO look into shared prefs (@adam)
    } else if (_prefs.getString(_shopifyKey) != null) {
      final QueryResult result = (await _graphQLClient.query(_getCustomer));
      checkForError(result);
      ShopifyUser user = ShopifyUser.fromJson(
          (result?.data ?? const {})['customer'] ?? const {});
      return user;
    }else{
      return null;
    }
  }

  Future<void> _setShopifyUser(String sharedPrefsToken, ShopifyUser shopifyUser) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _shopifyUser = shopifyUser;
    _prefs.setString(_shopifyKey, sharedPrefsToken);
  }
}
