import 'package:flutter_simple_shopify/graphql_operations/mutations/create_checkout.dart';
import 'package:flutter_simple_shopify/models/src/order.dart';
import 'package:graphql/client.dart';
import '../../graphql_operations/mutations/add_item(s)_to_checkout.dart';
import '../../graphql_operations/mutations/checkout_associate_customer.dart';
import '../../graphql_operations/mutations/checkout_customer_disassociate.dart';
import '../../graphql_operations/mutations/checkout_discount_code_apply.dart';
import '../../graphql_operations/mutations/checkout_discount_code_remove.dart';
import '../../graphql_operations/mutations/checkout_giftcard_remove.dart';
import '../../graphql_operations/mutations/checkout_giftcards_append.dart';
import '../../graphql_operations/queries/get_all_orders.dart';
import '../../graphql_operations/queries/get_checkout_information.dart';
import '../../models/src/checkout.dart';
import '../../shopify_config.dart';

class ShopifyCheckout {
  ShopifyCheckout._();
  static final ShopifyCheckout instance = ShopifyCheckout._();

  GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;

  /// Returns a [Checkout] object.
  ///
  /// Returns the Checkout object of the checkout with the [checkoutId].
  Future<Checkout> getCheckoutInfoQuery(String checkoutId, {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options =
        WatchQueryOptions(documentNode: gql(getCheckoutInfo), variables: {
      'id': checkoutId,
    });
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return Checkout.fromJson(
        (await _graphQLClient.query(_options))?.data['node']);
  }

  /// Returns all [Order] in a List of Orders.
  ///
  /// Returns a List of Orders from the Customer with the [customerAccessToken].
  Future<List<Order>> getAllOrders(String customerAccessToken) async {
    List<Order> orderList = [];
    Orders tempOrder;
    String cursor;
    do {
      final WatchQueryOptions _options =
          WatchQueryOptions(documentNode: gql(getAllOrdersQuery), variables: {
        'cursor': cursor,
        'customerAccessToken': customerAccessToken,
      });
      tempOrder = (Orders.fromJson(
          ((await _graphQLClient.query(_options))?.data['customer'] ??
              const {})['orders']));
      orderList += tempOrder?.orderList ?? const [];
      cursor = orderList.last.cursor;
    } while ((tempOrder?.hasNextPage == true));
    return orderList;
  }

  /// Replaces the [LineItems] in the [Checkout] associated to the [checkoutId].
  ///
  /// [checkoutLineItems] is a List of Map>String,dynamic> and should look like this:
  ///
  /// [
  /// {"quantity": 1, "variantId": "example-variant-id-1"},
  /// {"quantity": 2, "variantId": "example-variant-id-2"},
  /// {"quantity": 3, "variantId": "example-variant-id-3"}
  /// ]
  Future<void> checkoutLineItemsReplace(
      String checkoutId, List<Map<String, dynamic>> checkoutLineItems) async {
    final MutationOptions _options =
        MutationOptions(documentNode: gql(replaceCheckoutItems), variables: {
      'checkoutId': checkoutId,
      'checkoutLineItems': checkoutLineItems,
    });
    return await _graphQLClient.mutate(_options);
  }

  /// Associates the [Customer] that [customerAccessToken] belongs to, to the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutCustomerAssociate(
      String checkoutId, String customerAccessToken) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(associateCustomer),
        variables: {
          'checkoutId': checkoutId,
          'customerAccessToken': customerAccessToken
        });
    return await _graphQLClient.mutate(_options);
  }

  /// Disassociates the [Customer] from the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutCustomerDisassociate(String checkoutId) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutCustomerDisassociateMutation),
        variables: {'id': checkoutId});
    return await _graphQLClient.mutate(_options);
  }

  /// Applies [discountCode] to the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutDiscountCodeApply(
      String checkoutId, String discountCode) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutDiscountCodeApplyMutation),
        variables: {'checkoutId': checkoutId, 'discountCode': discountCode});
    return await _graphQLClient.mutate(_options);
  }

  /// Removes the applied discount from the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutDiscountCodeRemove(String checkoutId) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutDiscountCodeRemoveMutation),
        variables: {'checkoutId': checkoutId});
    return await _graphQLClient.mutate(_options);
  }

  /// Appends the [giftCardCodes] to the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutGiftCardAppend(
      String checkoutId, List<String> giftCardCodes) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutGiftCardsAppendMutation),
        variables: {'checkoutId': checkoutId, 'giftCardCodes': giftCardCodes});
    return await _graphQLClient.mutate(_options);
  }

  /// Returns the Checkout Id.
  ///
  /// Creates a new [Checkout].
  Future<String> createCheckout() async {
    final MutationOptions _options = MutationOptions(
      documentNode: gql(createCheckoutMutation),
    );

    return (((await ShopifyConfig.graphQLClient.mutate(_options))
                .data['checkoutCreate'] ??
            const {})['checkout'] ??
        const {})['id'];
  }

  /// Removes the Gift card that [appliedGiftCardId] belongs to, from the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutGiftCardRemove(
      String appliedGiftCardId, String checkoutId) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutGiftCardRemoveMutation),
        variables: {
          'appliedGiftCards': appliedGiftCardId,
          'checkoutId': checkoutId
        });
    return await _graphQLClient.mutate(_options);
  }
}
