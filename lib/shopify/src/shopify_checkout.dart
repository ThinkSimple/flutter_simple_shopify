import 'package:flutter_simple_shopify/enums/src/sort_key_order.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_complete_free.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_email_update.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_shipping_address_update.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/checkout_shipping_line_update.dart';
import 'package:flutter_simple_shopify/graphql_operations/mutations/create_checkout.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_checkout_information_with_shipping_rate.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_recently_ordered_products.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_orders_after_cursor.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/models/src/order.dart';
import 'package:graphql/client.dart';
import '../../flutter_simple_shopify.dart';
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

  GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient!;

  /// Returns the Checkout.
  ///
  /// Creates a new [Checkout].
  Future<Checkout> createCheckout(List<String> variantIdList,
      {Map<String, String>? shippingAddress,
      String? email,
      String? note,
      bool deleteThisPartOfCache = false}) async {
    var lineItems = transformVariantIdListIntoListOfMaps(variantIdList);
    dynamic variables = {
      "input": {"lineItems": lineItems, "note": note}
    };
    if (shippingAddress != null) {
      variables["input"]["shippingAddress"] = shippingAddress;
    }
    if (email != null) {
      variables["input"]["email"] = email;
    }
    final MutationOptions _options = MutationOptions(
        document: gql(createCheckoutMutation), variables: variables);
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    // return ((result?.data['checkoutCreate'] ?? const {})['checkout'] ??
    //     const {});
    final checkout = Checkout.fromJson(
        (result.data!['checkoutCreate'] ?? const {})['checkout']);
    return checkout;
  }

  /// Replaces the [LineItems] in the [Checkout] associated to the [checkoutId].
  ///
  /// [checkoutLineItems] is a List of Variant Ids
  Future<void> checkoutLineItemsReplace(
      String checkoutId, List<String> variantIdList,
      {bool deleteThisPartOfCache = false}) async {
    var checkoutLineItems = transformVariantIdListIntoListOfMaps(variantIdList);
    final MutationOptions _options =
        MutationOptions(document: gql(replaceCheckoutItems), variables: {
      'checkoutId': checkoutId,
      'checkoutLineItems': checkoutLineItems,
    });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutLineItemsReplace',
      errorKey: 'userErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
  }

  /// Returns a [Checkout] object.
  ///
  /// Returns the Checkout object of the checkout with the [checkoutId].
  Future<Checkout> getCheckoutInfoQuery(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options =
        WatchQueryOptions(document: gql(getCheckoutInfo), variables: {
      'id': checkoutId,
    });
    final QueryResult _queryResult = (await _graphQLClient.query(_options));
    checkForError(_queryResult);
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return Checkout.fromJson(_queryResult.data!['node']);
  }

  /// Updates the shipping address on given [checkoutId]
  Future<Checkout> shippingAddressUpdate(
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
        document: gql(checkoutShippingAddressUpdateMutation),
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
    checkForError(
      result,
      key: 'checkoutShippingAddressUpdateV2',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return Checkout.fromJson(
        result.data!['checkoutShippingAddressUpdateV2']['checkout'] ?? {});
  }

  Future<Checkout> getCheckoutInfoWithAvailableShippingRatesQuery(
      String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
        document: gql(getCheckoutInfoWithShippingRate),
        variables: {
          'id': checkoutId,
        });
    final QueryResult _queryResult = (await _graphQLClient.query(_options));
    checkForError(_queryResult);
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return Checkout.fromJson(_queryResult.data!['node']);
  }

  /// Associates the [Customer] that [customerAccessToken] belongs to, to the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutCustomerAssociate(
      String checkoutId, String customerAccessToken,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(associateCustomer),
        variables: {
          'checkoutId': checkoutId,
          'customerAccessToken': customerAccessToken
        });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutCustomerAssociateV2',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
  }

  /// Disassociates the [Customer] from the [Checkout] that [checkoutId] belongs to.
  Future<void> checkoutCustomerDisassociate(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutCustomerDisassociateMutation),
        variables: {'id': checkoutId});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutCustomerDisassociateV2',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
  }

  /// Applies [discountCode] to the [Checkout] that [checkoutId] belongs to.
  Future<Checkout> checkoutDiscountCodeApply(
      String checkoutId, String discountCode,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutDiscountCodeApplyMutation),
        variables: {'checkoutId': checkoutId, 'discountCode': discountCode});
    final QueryResult result = await _graphQLClient.mutate(_options);

    checkForError(
      result,
      key: 'checkoutDiscountCodeApplyV2',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }

    return Checkout.fromJson(
        result.data!['checkoutDiscountCodeApplyV2']['checkout'] ?? {});
  }

  /// Removes the applied discount from the [Checkout] that [checkoutId] belongs to.
  Future<Checkout> checkoutDiscountCodeRemove(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutDiscountCodeRemoveMutation),
        variables: {'checkoutId': checkoutId});
    QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutDiscountCodeRemove',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }

    return Checkout.fromJson(
        result.data!['checkoutDiscountCodeRemove']['checkout'] ?? {});
  }

  /// Appends the [giftCardCodes] to the [Checkout] that [checkoutId] belongs to.
  Future<Checkout> checkoutGiftCardAppend(
      String checkoutId, List<String> giftCardCodes,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutGiftCardsAppendMutation),
        variables: {'checkoutId': checkoutId, 'giftCardCodes': giftCardCodes});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutGiftCardsAppend',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }

    return Checkout.fromJson(
        result.data!['checkoutGiftCardsAppend']['checkout'] ?? {});
  }

  /// Removes the Gift card that [appliedGiftCardId] belongs to, from the [Checkout] that [checkoutId] belongs to.
  Future<Checkout> checkoutGiftCardRemove(
      String appliedGiftCardId, String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutGiftCardRemoveMutation),
        variables: {
          'appliedGiftCardId': appliedGiftCardId,
          'checkoutId': checkoutId
        });
    print('object');
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutGiftCardRemoveV2',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }

    return Checkout.fromJson(
        result.data!['checkoutGiftCardRemoveV2']['checkout'] ?? {});
  }

  /// Complete [Checkout] without providing payment information.
  /// You can use this mutation for free items or items whose purchase price is covered by a gift card
  Future<void> checkoutCompleteFree(String checkoutId,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutCompleteFreeMutation),
        variables: {'checkoutId': checkoutId});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutCompleteFree',
      errorKey: 'checkoutUserErrors',
    );

    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
  }

  Future<Checkout> shippingLineUpdate(
      String checkoutId, String shippingRateHandle,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutShippingLineUpdateMutation),
        variables: {
          'checkoutId': checkoutId,
          'shippingRateHandle': shippingRateHandle
        });
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(
      result,
      key: 'checkoutShippingLineUpdate',
      errorKey: 'checkoutUserErrors',
    );
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return Checkout.fromJson(
        result.data!['checkoutShippingLineUpdate']['checkout'] ?? {});
  }

  Future<Checkout> emailUpdate(String checkoutId, String email,
      {bool deleteThisPartOfCache = false}) async {
    final MutationOptions _options = MutationOptions(
        document: gql(checkoutEmailUpdateMutation),
        variables: {'checkoutId': checkoutId, 'email': email});
    final QueryResult result = await _graphQLClient.mutate(_options);
    checkForError(result,
        key: 'checkoutEmailUpdateV2', errorKey: 'checkoutUserErrors');
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }

    return Checkout.fromJson(result.data!['checkoutEmailUpdateV2']['checkout'] ?? {});
  }

  // bool _requiresShipping(QueryResult result) {
  //   return ((result?.data ?? const {})['node'] ?? const {})['requiresShipping'];
  // }

  /// Returns all [Order] in a List of Orders.
  ///
  /// Returns a List of Orders from the Customer with the [customerAccessToken].
  Future<List<Order>> getAllOrders(String customerAccessToken,
      {SortKeyOrder sortKey = SortKeyOrder.PROCESSED_AT,
      bool reverse = true,
      bool deleteThisPartOfCache = false}) async {
    final QueryOptions _options =
        WatchQueryOptions(document: gql(getAllOrdersQuery), variables: {
      'accessToken': customerAccessToken,
      'sortKey': sortKey.parseToString(),
      'reverse': reverse
    });
    final QueryResult result =
        await ShopifyConfig.graphQLClient!.query(_options);
    checkForError(result);
    Orders orders = Orders.fromJson(
        (((result.data ?? const {})['customer'] ?? const {})['orders'] ??
            const {}));
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return orders.orderList;
  }

  Future<Orders> getXOrdersAfterCursor(
      String customerAccessToken, int limit, String? startCursor,
      {SortKeyOrder sortKey = SortKeyOrder.ID,
      bool reverse = true,
      bool deleteThisPartOfCache = false}) async {
    String? cursor = startCursor;
    final QueryOptions _options = WatchQueryOptions(
        document: gql(getXOrdersAfterCursorQuery),
        variables: {
          'accessToken': customerAccessToken,
          'sortKey': sortKey.parseToString(),
          'reverse': reverse,
          'cursor': cursor,
          'x': limit
        });
    final QueryResult result =
        await ShopifyConfig.graphQLClient!.query(_options);
    checkForError(result);
    Orders orders = Orders.fromJson(
        (((result.data ?? const {})['customer'] ?? const {})['orders'] ??
            const {}));
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    return orders;
  }

  Future<List<Product?>> getRecentlyOrderedProducts(
      String customerAccessToken, int limit,
      {SortKeyOrder sortKey = SortKeyOrder.ID,
      bool reverse = true,
      int variantsCount = 1,
      bool deleteThisPartOfCache = false}) async {
    String? cursor;
    final QueryOptions _options = WatchQueryOptions(
        document: gql(getRecentlyOrderedProductsQuery(variantsCount)),
        variables: {
          'accessToken': customerAccessToken,
          'sortKey': sortKey.parseToString(),
          'reverse': reverse,
          'cursor': cursor,
          'x': limit
        });
    final QueryResult result =
        await ShopifyConfig.graphQLClient!.query(_options);
    checkForError(result);
    Orders orders = Orders.fromJson(
        (((result.data ?? const {})['customer'] ?? const {})['orders'] ??
            const {}));
    if (deleteThisPartOfCache) {
      //_graphQLClient.cache.writeQuery(_options.asRequest, data: {});
    }
    List<Product?> pList = [];
    orders.orderList.forEach((order) {
      order.lineItems?.lineItemOrderList?.forEach((lineItem) {
        if (lineItem.variant.product != null) {
          Product? hasProduct = pList.firstWhere(
              (product) => product!.id == lineItem.variant.product!.id,
              orElse: () => null);
          if (hasProduct == null) {
            pList.add(lineItem.variant.product);
          }
        }
      });
    });
    return pList;
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
}
