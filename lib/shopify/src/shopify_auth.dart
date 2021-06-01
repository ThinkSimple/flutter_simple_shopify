import 'dart:convert';
import 'package:flutter_simple_shopify/graphql_operations/mutations/customer_access_token_renew.dart';
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
  final GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient!;

  static final ShopifyAuth instance = ShopifyAuth._();

  static ShopifyUser? _shopifyUser;

  static const String _shopifyKey = 'FLUTTER_SIMPLE_SHOPIFY_ACCESS_TOKEN';

  static Future<String?> get currentCustomerAccessToken async =>
      (await currentCustomer)!.accessToken;

  static Future<CustomerAccessToken?> get currentCustomer async {
    String? string =
        (await SharedPreferences.getInstance()).getString(_shopifyKey);
    if (string != null) {
      Map<String, dynamic> json = jsonDecode(string);
      return CustomerAccessToken(
          json['accessToken'].toString(), DateTime.parse(json['expiresAt']));
    } else {
      return null;
    }
  }

  /// Tries to create a new user account with the given email address and password.
  Future<ShopifyUser> createUser(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options =
        MutationOptions(document: gql(customerCreateMutation), variables: {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    });
    final QueryResult result = await _graphQLClient.mutate(_options);

    checkForError(
      result,
      key: 'customerCreate',
      errorKey: 'customerUserErrors',
    );
    final shopifyUser = ShopifyUser.fromJson(
        (result.data!['customerCreate'] ?? const {})['customer']);
    final CustomerAccessToken customerAccessToken =
        await _createAccessToken(email, password);
    await _setShopifyUser(customerAccessToken);
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return shopifyUser;
  }

  /// Triggers the Shopify Authentication backend to send a password-reset
  /// email to the given email address, which must correspond to an existing
  /// user of your app.
  Future<void> sendPasswordResetEmail(
      {required String email, bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(customerRecoverMutation), variables: {'email': email});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'customerRecover',
      errorKey: 'customerUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
  }

  /// Tries to sign in a user with the given email address and password.
  Future<ShopifyUser> signInWithEmailAndPassword(
      {required String email,
      required String password,
      bool deleteThisPartOfCache = false}) async {
    final CustomerAccessToken customerAccessToken =
        await _createAccessToken(email, password);
    final WatchQueryOptions _getCustomer = WatchQueryOptions(
        document: gql(getCustomerQuery),
        variables: {'customerAccessToken': customerAccessToken.accessToken});
    final QueryResult result = await _graphQLClient.query(_getCustomer);
    checkForError(result);
    final shopifyUser = ShopifyUser.fromJson(result.data!['customer']);
    await _setShopifyUser(customerAccessToken);
    if (deleteThisPartOfCache) {
      // _graphQLClient.cache.writeQuery(_getCustomer.asRequest, data: {});
    }
    return shopifyUser;
  }

  /// Helper method for creating the accessToken.
  Future<CustomerAccessToken> _createAccessToken(String email, String password,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(customerAccessTokenCreate),
        variables: {'email': email, 'password': password});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result,
        key: 'customerAccessTokenCreate', errorKey: 'customerUserErrors');
        print('object');
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    var a = (result.data ?? const {})['customerAccessTokenCreate'] ?? {};
    print('object');
    return CustomerAccessToken.fromJson(
        (result.data ?? const {})['customerAccessTokenCreate'] ?? {});
  }

  /// Signs out the current user and clears it from the disk cache.
  Future<void> signOutCurrentUser({bool deleteThisPartOfCache = false}) async {
    String? cat = await currentCustomerAccessToken;
    final MutationOptions _options = MutationOptions(
        document: gql(accessTokenDeleteMutation),
        variables: {'customerAccessToken': cat});
    await _setShopifyUser(null);
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'customerAccessTokenDelete',
      errorKey: 'userErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    // return result;
  }

  Future<CustomerAccessToken> renewCurrentUser(
      {bool deleteThisPartOfCache = false}) async {
    String? cat = await currentCustomerAccessToken;
    final MutationOptions _options = MutationOptions(
        document: gql(customerAccessTokenRenewMutation),
        variables: {'customerAccessToken': cat});
    final QueryResult result = await _graphQLClient.mutate(_options);
    CustomerAccessToken customerAccessToken =
        CustomerAccessToken.fromJson(result.data!['customerAccessTokenRenew']);
    await _setShopifyUser(customerAccessToken);
    checkForError(result);
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return customerAccessToken;
  }

  /// Returns the currently signed-in [ShopifyUser] or [null] if there is none.
  Future<ShopifyUser?> currentUser({bool deleteThisPartOfCache = false}) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? cat = await currentCustomerAccessToken;
    final WatchQueryOptions _getCustomer = WatchQueryOptions(
        document: gql(getCustomerQuery),
        variables: {'customerAccessToken': cat});
    if (deleteThisPartOfCache) {
      // _graphQLClient.cache.writeQuery(_getCustomer.asRequest, data: {});
    }
    if (_shopifyUser != null) {
      return _shopifyUser;
    } else if (_prefs.getString(_shopifyKey) != null) {
      final QueryResult result = (await _graphQLClient.query(_getCustomer));
      checkForError(result);
      ShopifyUser user = ShopifyUser.fromJson(
          (result.data ?? const {})['customer'] ?? const {});
      return user;
    } else {
      return null;
    }
  }

  Future<void> _setShopifyUser(CustomerAccessToken? customerAccessToken) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (customerAccessToken != null) {
      String jsonString = jsonEncode(customerAccessToken);
      // print('_setShopifyUser $jsonString');
      _prefs.setString(_shopifyKey, jsonString);
    } else {
      _prefs.remove(_shopifyKey);
    }
  }
}
