import 'package:flutter/cupertino.dart';
import 'package:graphql/client.dart';
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

  /// Tries to create a new user account with the given email address and password.
  Future<ShopifyUser> createUserWithEmailAndPassword({@required String email, @required String password}) async{
    assert(email != null);
    assert(password != null);
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerCreateMutation),
        variables: {
          'email' : email,
          'password': password,
        }
    );
    return ShopifyUser.fromJson((await _graphQLClient.mutate(_options))?.data['customerCreate']);
   }


  /// Triggers the Shopify Authentication backend to send a password-reset
  /// email to the given email address, which must correspond to an existing
  /// user of your app.
  Future<void> sendPasswordResetEmail({@required String email}) async{
    assert(email != null);
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerRecoverMutation),
        variables: {
          'email' : email
        }
    );
    await _graphQLClient.mutate(_options);
  }

  /// Tries to sign in a user with the given email address and password.
  Future<ShopifyUser> signInWithEmailAndPassword({@required String email, @required String password}) async{
    assert(email != null);
    assert(password != null);
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerAccessTokenCreate),
        variables: {
          'email' : email,
          'password' : password
        }
    );
    final String customerAccessToken = _extractAccessToken((await _graphQLClient.mutate(_options)).data);
    final WatchQueryOptions _getCustomer = WatchQueryOptions(
        documentNode: gql(getCustomerQuery),
        variables: {
          'customerAccessToken' : customerAccessToken
        }
    );

    return ShopifyUser.fromJson((await _graphQLClient.query(_getCustomer))?.data);
  }

  /// Helper method to extract the customerAccessToken from the mutation.
  String _extractAccessToken(Map<String,dynamic> mutationData){
    return mutationData['customerAccessTokenCreate']['customerAccessToken']['accessToken'];
  }

  Future<void> accessTokenDelete({String accessToken}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(accessTokenDeleteMutation),
        variables: {
          'customerAccessToken' : accessToken
        }
    );
    return await _graphQLClient.mutate(_options);
  }



  /// Signs out the current user and clears it from the disk cache. //TODO add shared prefs and implement functions below
//  Future<void> signOut() async{
//    final MutationOptions _options = MutationOptions(
//        documentNode: gql(accessTokenDelete),
//        variables: {
//          'customerAccessToken' : accessToken
//        }
//    );
//    return await _graphQLClient.mutate(_options);
//  }
//
 // /// Returns the currently signed-in [ShopifyUser] or [null] if there is none.
 // Future<ShopifyUser> currentUser() async{ //TODO logic
 // }
}