import 'package:meta/meta.dart';
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
class ShopifyAuth {
  ShopifyAuth._();
  final GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;

  static final ShopifyAuth instance = ShopifyAuth._();

  static ShopifyUser _shopifyUser;

  static const String _shopifyKey = 'FLUTTER_SIMPLE_SHOPIFY_ACCESS_TOKEN';


  /// Tries to create a new user account with the given email address and password.
  Future<ShopifyUser> createUserWithEmailAndPassword(
      {@required String email, @required String password}) async {
    assert(email != null);
    assert(password != null);
    final MutationOptions _options =
    MutationOptions(documentNode: gql(customerCreateMutation), variables: {
      'email': email,
      'password': password,
    });
    final String customerAccessToken = await _createAccessToken(email, password);
    final shopifyUser = ShopifyUser.fromJson(
        ((await _graphQLClient.mutate(_options))?.data['customerCreate'] ?? const {})['customer']);
    _setShopifyUser(customerAccessToken, _shopifyUser);
    return shopifyUser;
  }

  /// Triggers the Shopify Authentication backend to send a password-reset
  /// email to the given email address, which must correspond to an existing
  /// user of your app.
  Future<void> sendPasswordResetEmail({@required String email}) async {
    assert(email != null);
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerRecoverMutation),
        variables: {'email': email});
    await _graphQLClient.mutate(_options);
  }

  /// Tries to sign in a user with the given email address and password.
  Future<ShopifyUser> signInWithEmailAndPassword(
      {@required String email, @required String password}) async {
    assert(email != null);
    assert(password != null);
    final String customerAccessToken = await _createAccessToken(email, password);
    final WatchQueryOptions _getCustomer = WatchQueryOptions(
        documentNode: gql(getCustomerQuery),
        variables: {'customerAccessToken': customerAccessToken});
    final shopifyUser = ShopifyUser.fromJson(
        (await _graphQLClient.query(_getCustomer))?.data['customer']);
    _setShopifyUser(customerAccessToken, shopifyUser);
    return shopifyUser;
  }

  /// Helper method for creating the accessToken.
  Future<String> _createAccessToken(String email, String password) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerAccessTokenCreate),
        variables: {'email': email, 'password': password});
    return _extractAccessToken((await _graphQLClient.mutate(_options)).data);
  }

  /// Helper method for extracting the customerAccessToken from the mutation.
  String _extractAccessToken(Map<String, dynamic> mutationData) {
    return mutationData['customerAccessTokenCreate']['customerAccessToken']
    ['accessToken'];
  }

  /// Deletes the [accessToken].
  ///
  /// Token deletion is used here to sign out the user.
  /// Signs out the current user and clears it from the disk cache.
  Future<void> signOutCurrentUser({String accessToken}) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final MutationOptions _options = MutationOptions(
        documentNode: gql(accessTokenDeleteMutation),
        variables: {'customerAccessToken': _prefs.getString(_shopifyKey)});
    _setShopifyUser(null, null);
    return await _graphQLClient.mutate(_options);
  }

  /// Returns the currently signed-in [ShopifyUser] or [null] if there is none.
  Future<ShopifyUser> currentUser() async{ //TODO logic
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    print(_prefs.getString(_shopifyKey));
    final WatchQueryOptions _getCustomer = WatchQueryOptions(
        documentNode: gql(getCustomerQuery),
        variables: {'customerAccessToken': _prefs.getString(_shopifyKey)});
    return _shopifyUser ?? ShopifyUser.fromJson(
        (await _graphQLClient.query(_getCustomer))?.data['customer']);
  }

  Future<void> _setShopifyUser(String sharedPrefsToken, ShopifyUser shopifyUser) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _shopifyUser = shopifyUser;
    _prefs.setString(_shopifyKey, sharedPrefsToken);
  }
}
