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

  /// Returns a Checkout object.
  ///
  /// Returns the Checkout object of the checkout with the [checkoutId].
  Future<Checkout> getCheckoutInfoQuery({String checkoutId}) async{
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getCheckoutInfo),
        variables: {
          'checkoutId' : checkoutId,
        }
    );
   Checkout checkout = Checkout.fromJson((await _graphQLClient.query(_options))?.data['node']);
    return Checkout.fromJson((await _graphQLClient.query(_options))?.data['node']);
  }

  /// Returns all orders in a List of Orders.
  ///
  /// Returns a List of Orders from the Customer with the [customerAccessToken].
  Future<List<Order>> getAllOrders({String customerAccessToken}) async{
    List<Order> orderList = [];
    Orders tempOrder;
    String cursor;
    do{
      final WatchQueryOptions _options = WatchQueryOptions(
          documentNode: gql(getAllOrdersQuery),
          variables: {
            'cursor' : cursor,
            'customerAccessToken' : customerAccessToken,
          }
      );
      tempOrder = (Orders.fromJson(((await _graphQLClient.query(_options))?.data['customer']  ?? const {})['orders']));
      orderList += tempOrder?.orderList ?? const [];
      cursor = orderList.last.cursor;
    }while((tempOrder?.hasNextPage == true));
    return orderList;
  }


  Future<void> checkoutLineItemsReplace({String checkoutId, List<Map<String,dynamic>> checkoutLineItems}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(replaceCheckoutItems),
        variables: {
          'checkoutId': checkoutId,
          'checkoutLineItems': checkoutLineItems,
        }
    );
    return await _graphQLClient.mutate(_options);
  }

  Future<void> checkoutCustomerAssociate({String checkoutId, String customerAccessToken}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(associateCustomer),
        variables: {
          'checkoutId' : checkoutId,
          'customerAccessToken' : customerAccessToken
        }
    );
    return await _graphQLClient.mutate(_options);
  }

  Future<void> checkoutCustomerDisassociate({String checkoutId}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutCustomerDisassociateMutation),
        variables: {
          'id' : checkoutId
        }
    );
    return await _graphQLClient.mutate(_options);
  }

  Future<void> checkoutDiscountCodeApply({String checkoutId, String discountCode}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutDiscountCodeApplyMutation),
        variables: {
          'checkoutId' : checkoutId,
          'discountCode' : discountCode
        }
    );
    return await _graphQLClient.mutate(_options);
  }

  Future<void> checkoutDiscountCodeRemove({String checkoutId}) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutDiscountCodeRemoveMutation),
        variables: {
          'checkoutId' : checkoutId
        }
    );
    return await _graphQLClient.mutate(_options);
  }

  Future<void> checkoutGiftCardAppend(String checkoutId, List<String> giftCardCodes) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutGiftCardsAppendMutation),
        variables: {
          'checkoutId' : checkoutId,
          'giftCardCodes' : giftCardCodes
        }
    );
    return await _graphQLClient.mutate(_options);
  }

  Future<String> createCheckout() async {
    final MutationOptions _options = MutationOptions(
      documentNode: gql(createCheckoutMutation),
    );

    return (((await ShopifyConfig.graphQLClient.mutate(_options)).data['checkoutCreate'] ?? const {})['checkout'] ?? const {})['id'];
  }

  Future<void> checkoutGiftCardRemove(String appliedGiftCardId, String checkoutId) async {
    final MutationOptions _options = MutationOptions(
        documentNode: gql(checkoutGiftCardRemoveMutation),
        variables: {
          'appliedGiftCards' : appliedGiftCardId,
          'checkoutId' : checkoutId
        }
    );
    return await _graphQLClient.mutate(_options);
  }

}