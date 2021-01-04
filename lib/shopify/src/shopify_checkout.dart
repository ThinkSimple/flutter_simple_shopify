import 'package:flutter_simple_shopify/enums/src/sort_key_order.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_complete_free.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_email_update.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_shipping_address_update.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_shipping_line_update.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/create_checkout.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_checkout_info_requires_shipping.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_checkout_information_with_shipping_rate.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_checkout_without_shipping_rates.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_orders_after_cursor.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
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

/// ShopifyCheckout provides various method in order to work with checkouts.
class ShopifyCheckout with ShopifyError {
  ShopifyCheckout._();
  static final ShopifyCheckout instance = ShopifyCheckout._();

  GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;

  /// Returns a [Checkout] object.
  ///
  /// Returns the Checkout object of the checkout with the [checkoutId].
  Future<Checkout> getCheckoutInfoQuery(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _optionsRequireShipping = WatchQueryOptions(
        documentNode: gql(getCheckoutInfoAboutShipping),
        variables: {
          'id': checkoutId,
        });
    QueryResult result = await _graphQLClient.query(_optionsRequireShipping);
    print((result?.data as LazyCacheMap)?.data);
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(_requiresShipping(result) == true
            ? getCheckoutInfo
            : getCheckoutInfoWithoutShipping),
        variables: {
          'id': checkoutId,
        });
    final QueryResult _queryResult = (await _graphQLClient.query(_options));
    checkForError(_queryResult);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return Checkout.fromJson(_queryResult?.data['node']);
  }

  Future<Checkout> getCheckoutInfoWithAvailableShippingRatesQuery(
      String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _optionsRequireShipping = WatchQueryOptions(
        documentNode: gql(getCheckoutInfoAboutShipping),
        variables: {
          'id': checkoutId,
        });
    QueryResult result = await _graphQLClient.query(_optionsRequireShipping);
    print((result?.data as LazyCacheMap)?.data);
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(_requiresShipping(result) == true
            ? getCheckoutInfoWithShippingRate
            : getCheckoutInfoWithoutShipping),
        variables: {
          'id': checkoutId,
        });
    final QueryResult _queryResult = (await _graphQLClient.query(_options));
    checkForError(_queryResult);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return Checkout.fromJson(_queryResult?.data['node']);
  }

  bool _requiresShipping(QueryResult result) {
    return ((result?.data ?? const {})['node'] ?? const {})['requiresShipping'];
  }

  /// Returns all [Order] in a List of Orders.
  ///
  /// Returns a List of Orders from the Customer with the [customerAccessToken].
  Future<List<Order>> getAllOrders(String customerAccessToken,
      { SortKeyOrder sortKey = SortKeyOrder.PROCESSED_AT, bool reverse = true, bool deleteThisPartOfCache = false}) async {
      final QueryOptions _options = WatchQueryOptions(
          documentNode: gql(getAllOrdersQuery),
          variables: {
            'accessToken': customerAccessToken,
            'sortKey': sortKey.parseToString(),
            'reverse': reverse
          }
      );
      final QueryResult result = await ShopifyConfig.graphQLClient.query(_options);
      checkForError(result);
      Orders orders = Orders.fromJson(((((result?.data ?? const {}))['customer'] ?? const {})['orders'] ?? const {}));
      if(deleteThisPartOfCache) {
        _graphQLClient.cache.write(_options.toKey(), null);
      }
    return orders.orderList;
  }

  Future<Orders> getXOrdersAfterCursor(
      String customerAccessToken, int limit, String startCursor,
      {SortKeyOrder sortKey = SortKeyOrder.ID,
      bool reverse = true,
      bool deleteThisPartOfCache = false}) async {
    String cursor = startCursor;
    final QueryOptions _options =
        WatchQueryOptions(documentNode: gql(getXOrdersAfterCursorQuery), variables: {
      'accessToken': customerAccessToken,
      'sortKey': sortKey.parseToString(),
      'reverse': reverse,
      'cursor': cursor,
      'x': limit
    });
    final QueryResult result =
        await ShopifyConfig.graphQLClient.query(_options);
    checkForError(result);
    Orders orders = Orders.fromJson(
        ((((result?.data ?? const {}))['customer'] ?? const {})['orders'] ??
            const {}));
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return orders;
  }

  /// Replaces the [LineItems] in the [Checkout] associated to the [checkoutId].
  ///
  /// [checkoutLineItems] is a List of Variant Ids
  Future<void> checkoutLineItemsReplace(
      String checkoutId, List<String> variantIdList,
      {bool deleteThisPartOfCache = false}) async {
    var checkoutLineItems = transformVariantIdListIntoListOfMaps(variantIdList);
    final MutationOptions _options =
        MutationOptions(documentNode: gql(replaceCheckoutItems), variables: {
      'checkoutId': checkoutId,
      'checkoutLineItems': checkoutLineItems,
    });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Updates the shipping address on given [checkoutId]
  Future<void> shippingAddressUpdate(
      String checkoutId,
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
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutShippingAddressUpdateMutation),
        variables: {
          'checkoutId': checkoutId,
          'address1': address1,
          'address2': address2,
          'company': company,
          'city': city,
          'country': country,
          'firstName': firstName,
          'lastName': lastName,
          'phone': phone,
          'province': province,
          'zip': zip
        });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result,
        key: 'checkoutShippingAddressUpdateV2', errorKey: 'checkoutUserErrors');
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Helper method for transforming a list of variant ids into a List Of Map<String, dynamic> which looks like this:
  ///
  /// [{"quantity":AMOUNT,"variantId":"YOUR_VARIANT_ID"}]
  List<Map<String, dynamic>> transformVariantIdListIntoListOfMaps(
      List<String> variantIdList) {
    List<Map<String, dynamic>> lineItemList = [];
    variantIdList.forEach((e) {
      if (lineItemList.indexWhere((test) => e == test['variantId']) == -1)
        lineItemList.add({
          "quantity": variantIdList.where((id) => e == id).toList().length,
          "variantId": e
        });
    });
    return lineItemList;
  }

  /// Associates the [Customer] that [customerAccessToken] belongs to, to the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutCustomerAssociate(
      String checkoutId, String customerAccessToken,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(associateCustomer),
        variables: {
          'checkoutId': checkoutId,
          'customerAccessToken': customerAccessToken
        });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Disassociates the [Customer] from the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutCustomerDisassociate(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutCustomerDisassociateMutation),
        variables: {'id': checkoutId});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Applies [discountCode] to the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutDiscountCodeApply(String checkoutId, String discountCode,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutDiscountCodeApplyMutation),
        variables: {'checkoutId': checkoutId, 'discountCode': discountCode});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Removes the applied discount from the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutDiscountCodeRemove(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutDiscountCodeRemoveMutation),
        variables: {'checkoutId': checkoutId});
    QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Appends the [giftCardCodes] to the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutGiftCardAppend(
      String checkoutId, List<String> giftCardCodes,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutGiftCardsAppendMutation),
        variables: {'checkoutId': checkoutId, 'giftCardCodes': giftCardCodes});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Returns the Checkout Id.
  ///
  /// Creates a new [Checkout].
  Future<String> createCheckout({bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
      documentNode: gql(createCheckoutMutation),
    );
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return ((result?.data['checkoutCreate'] ?? const {})['checkout'] ??
        const {})['id'];
  }

  /// Removes the Gift card that [appliedGiftCardId] belongs to, from the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutGiftCardRemove(
      String appliedGiftCardId, String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutGiftCardRemoveMutation),
        variables: {
          'appliedGiftCards': appliedGiftCardId,
          'checkoutId': checkoutId
        });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  /// Complete [Checkout] without providing payment information.
  /// You can use this mutation for free items or items whose purchase price is covered by a gift card
  Future<void> checkoutCompleteFree(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutCompleteFreeMutation),
        variables: {'checkoutId': checkoutId});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForCheckoutError(result);

    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  Future<void> shippingLineUpdate(String checkoutId, String shippingRateHandle,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutShippingLineUpdateMutation),
        variables: {
          'checkoutId': checkoutId,
          'shippingRateHandle': shippingRateHandle
        });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    print((result?.data as LazyCacheMap)?.data);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }

  Future<void> emailUpdate(String checkoutId, String email,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutEmailUpdateMutation),
        variables: {'checkoutId': checkoutId, 'email': email});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result,
        key: 'checkoutEmailUpdateV2', errorKey: 'checkoutUserErrors');
    print((result?.data as LazyCacheMap)?.data);
    if (deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
  }
}
