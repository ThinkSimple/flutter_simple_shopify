import 'package:flutter_simple_shopify/graphql_operations/mutations/customer_address_create.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/customer_address_delete.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/customer_address_update.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/customer_update.dart';

import 'package:graphql/client.dart';
import '../../shopify_config.dart';

class ShopifyCustomer {
  ShopifyCustomer._();

  static final ShopifyCustomer instance = ShopifyCustomer._();

  GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;

  /// Updated the Address of a Customer, please input only the fields that you wish to update.
  Future<void> customerAddressUpdate(
      String address1,
      String address2,
      String company,
      String city,
      String country,
      String firstName,
      String lastName,
      String phone,
      String province,
      String zip,
      String customerAccessToken,
      id) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerAddressUpdateMutation),
        variables: {
          'address1': address1,
          'address2': address2,
          'company': company,
          'city': city,
          'country': country,
          'firstName': firstName,
          'lastName': lastName,
          'phone': phone,
          'province': province,
          'zip': zip,
          'customerAccessToken': customerAccessToken,
          'id': id
        });
    return await _graphQLClient.mutate(_options);
  }

  /// Updates the customer to which [customerAccessToken] belongs to.
  Future<void> customerUpdate(
      {String email,
      String firstName,
      String lastName,
      String password,
      String phoneNumber,
      String customerAccessToken,
      bool acceptsMarketing}) async {
    final MutationOptions _options =
        MutationOptions(documentNode: gql(customerUpdateMutation), variables: {
      'id': email,
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
      'phone': phoneNumber,
      'acceptsMarketing': acceptsMarketing,
      'customerAccessToken': customerAccessToken
    });
    return await _graphQLClient.mutate(_options);
  }

  /// Creates a address for the customer to which [customerAccessToken] belongs to.
  Future<void> customerAddressCreate(
      {String address1,
      String address2,
      String company,
      String city,
      String country,
      String firstName,
      String lastName,
      String phone,
      String province,
      String zip,
      String customerAccessToken}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerAddressCreateMutation),
        variables: {
          'address1': address1,
          'address2': address2,
          'company': company,
          'city': city,
          'country': country,
          'firstName': firstName,
          'lastName': lastName,
          'phone': phone,
          'province': province,
          'zip': zip,
          'customerAccessToken': customerAccessToken,
        });
    return await _graphQLClient.mutate(_options);
  }

  /// Deletes the address associated with the [addressId] from the customer to which [customerAccessToken] belongs to.
  ///
  /// A Customer may have more than 1 address, so the addresses have Id's.
  Future<void> customerAddressDelete(
      {String customerAccessToken, String addressId}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(customerAddressDeleteMutation),
        variables: {
          'customerAccessToken': customerAccessToken,
          'id': addressId
        });
    return await _graphQLClient.mutate(_options);
  }
}
