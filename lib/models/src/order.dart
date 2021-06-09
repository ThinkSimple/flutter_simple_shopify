import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter_simple_shopify/enums/src/order_enums.dart';
// import 'package:flutter_simple_shopify/enums/enums.dart';
import 'package:flutter_simple_shopify/models/src/product.dart';

import 'checkout.dart';

class Orders {
  final List<Order> orderList;
  final bool? hasNextPage;

  Orders({required this.orderList, required this.hasNextPage});

  static Orders fromJson(Map<String, dynamic> json) {
    return Orders(
        orderList: _getOrderList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Order> _getOrderList(Map<String, dynamic> json) {
    List<Order> orderList = [];
    json['edges']
        ?.forEach((e) => orderList.add(Order.fromJson(e['node'] ?? const {})));
    return orderList;
  }
}

class Order {
  final String? id;
  final String? email;
  final String? currencyCode;
  final String? customerUrl;
  final LineItemsOrder? lineItems;
  final String? name;
  final int? orderNumber;
  final String? phone;
  final DateTime? processedAt;
  final DateTime? canceledAt;
  final OrderCancelReason? cancelReason;
  final OrderFinancialStatus? financialStatus;
  final OrderFulfillmentStatus? fulfillmentStatus;
  final MailingAddress? shippingAddress;
  final String? statusUrl;
  final DiscountApplications? discountApplications;
  final PriceV2? subtotalPriceV2;
  final PriceV2? totalPriceV2;
  final PriceV2? totalRefundedV2;
  final PriceV2? totalShippingPriceV2;
  final PriceV2? totalTaxV2;
  final String? cursor;

  Order(
      {this.id,
      this.email,
      this.currencyCode,
      this.customerUrl,
      this.lineItems,
      this.name,
      this.orderNumber,
      this.phone,
      this.processedAt,
      this.canceledAt,
      this.cancelReason,
      this.financialStatus,
      this.fulfillmentStatus,
      this.shippingAddress,
      this.statusUrl,
      this.discountApplications,
      this.subtotalPriceV2,
      this.totalPriceV2,
      this.totalRefundedV2,
      this.totalShippingPriceV2,
      this.totalTaxV2,
      this.cursor});

  static Order fromJson(Map<String, dynamic>? json) {
    DateTime processedAt = DateTime.parse((json ?? const {})['processedAt']);
    DateTime? canceledAt = (json ?? const {})['canceledAt'] != null
        ? DateTime.parse((json ?? const {})['canceledAt'])
        : null;
    OrderFinancialStatus? financialStatus =
        (json ?? const {})['financialStatus'] != null
            ? EnumToString.fromString(OrderFinancialStatus.values,
                (json ?? const {})['financialStatus'])
            : null;
    OrderFulfillmentStatus? fulfillmentStatus =
        (json ?? const {})['fulfillmentStatus'] != null
            ? EnumToString.fromString(OrderFulfillmentStatus.values,
                (json ?? const {})['fulfillmentStatus'])
            : null;
    OrderCancelReason? cancelReason = (json ?? const {})['cancelReason'] != null
        ? EnumToString.fromString(
            OrderCancelReason.values, (json ?? const {})['cancelReason'])
        : null;

    return Order(
        id: (json ?? const {})['id'],
        email: (json ?? const {})['email'],
        currencyCode: (json ?? const {})['currencyCode'],
        customerUrl: (json ?? const {})['customerUrl'],
        lineItems: LineItemsOrder.fromJson((json ?? const {})['lineItems'] ?? {}),
        name: (json ?? const {})['name'],
        orderNumber: (json ?? const {})['orderNumber'],
        phone: (json ?? const {})['phone'],
        processedAt: processedAt,
        canceledAt: canceledAt,
        cancelReason: cancelReason,
        financialStatus: financialStatus,
        fulfillmentStatus: fulfillmentStatus,
        shippingAddress: MailingAddress.fromJson(
            (json ?? const {})['shippingAddress'] ?? const {}),
        statusUrl: (json ?? const {})['statusUrl'],
        discountApplications: DiscountApplications.fromJson(
            (json ?? const {})['discountApplications']),
        subtotalPriceV2:
            PriceV2.fromJson((json ?? const {})['subtotalPriceV2'] ?? const {}),
        totalPriceV2:
            PriceV2.fromJson((json ?? const {})['totalPriceV2'] ?? const {}),
        totalRefundedV2:
            PriceV2.fromJson((json ?? const {})['totalRefundedV2'] ?? const {}),
        totalShippingPriceV2: PriceV2.fromJson(
            (json ?? const {})['totalShippingPriceV2'] ?? const {}),
        totalTaxV2:
            PriceV2.fromJson((json ?? const {})['totalTaxV2'] ?? const {}),
        cursor: json?['cursor']);
  }
}

class LineItemsOrder {
  final List<LineItemOrder>? lineItemOrderList;

  LineItemsOrder({this.lineItemOrderList});

  static LineItemsOrder fromJson(Map<String, dynamic> json) {
    return LineItemsOrder(lineItemOrderList: _getLineItemOrderList(json));
  }

  static _getLineItemOrderList(Map<String, dynamic> json) {
    List<LineItemOrder> lineItemListOrder = [];
    json['edges']?.forEach((lineItemOrder) =>
        lineItemListOrder.add(LineItemOrder.fromJson(lineItemOrder)));
    return lineItemListOrder;
  }
}

class LineItemOrder {
  final int? currentQuantity;
  final List<DiscountAllocations> discountAllocations;
  final PriceV2 discountedTotalPrice;
  final PriceV2 originalTotalPrice;
  final int? quantity;
  final String? title;
  final ProductVariantCheckout variant;

  LineItemOrder(
      {this.currentQuantity,
      required this.discountAllocations,
      required this.discountedTotalPrice,
      required this.originalTotalPrice,
      this.quantity,
      this.title,
      required this.variant});

  static LineItemOrder fromJson(Map<String, dynamic> json) {
    return LineItemOrder(
        currentQuantity: (json['node'] ?? const {})['currentQuantity'],
        discountAllocations: _getDiscountAllocationsList(json),
        discountedTotalPrice: PriceV2.fromJson(
            (json['node'] ?? const {})['discountedTotalPrice'] ?? const {}),
        originalTotalPrice: PriceV2.fromJson(
            (json['node'] ?? const {})['originalTotalPrice'] ?? const {}),
        quantity: (json['node'] ?? const {})['quantity'],
        title: (json['node'] ?? const {})['title'],
        variant: ProductVariantCheckout.fromJson((json['node'] ?? const {})['variant'] ?? {}));
  }

  static _getDiscountAllocationsList(Map<String, dynamic> json) {
    List<DiscountAllocations> discountList = [];
    (json['node'] ?? const {})['discountAllocations']?.forEach((discount) =>
        discountList.add(DiscountAllocations.fromJson(discount ?? const {})));
    return discountList;
  }
}

class DiscountAllocations {
  final PriceV2 allocatedAmount;

  DiscountAllocations({required this.allocatedAmount});

  static DiscountAllocations fromJson(Map<String, dynamic> json) {
    return DiscountAllocations(
        allocatedAmount: PriceV2.fromJson(json['allocatedAmount'] ?? const {}));
  }
}

// class ShippingAddress {
//   final String address1;
//   final String address2;
//   final String city;
//   final String company;
//   final String country;
//   final String countryCodeV2;
//   final String firstName;
//   final String id;
//   final String lastName;
//   final double latitude;
//   final double longitude;
//   final String name;
//   final String phone;
//   final String province;
//   final String provinceCode;
//   final String zip;

//   ShippingAddress(
//       {this.address1,
//       this.address2,
//       this.city,
//       this.company,
//       this.country,
//       this.countryCodeV2,
//       this.firstName,
//       this.id,
//       this.lastName,
//       this.latitude,
//       this.longitude,
//       this.name,
//       this.phone,
//       this.province,
//       this.provinceCode,
//       this.zip});

//   static ShippingAddress fromJson(Map<String, dynamic> json) {
//     return ShippingAddress(
//         address1: json['address1'],
//         address2: json['address2'],
//         city: json['city'],
//         company: json['company'],
//         country: json['country'],
//         countryCodeV2: json['countryCodeV2'],
//         firstName: json['firstName'],
//         id: json['id'],
//         lastName: json['lastName'],
//         latitude: json['latitude'],
//         longitude: json['longitude'],
//         name: json['name'],
//         phone: json['phone'],
//         province: json['province'],
//         provinceCode: json['provinceCode'],
//         zip: json['zip']);
//   }
// }
