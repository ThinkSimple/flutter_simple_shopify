import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'line_items_order/line_items_order.dart';
import 'shipping_address/shipping_address.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  factory Order({
    required String id,
    required String email,
    required String currencyCode,
    required String customerUrl,
    required LineItemsOrder lineItems,
    required String name,
    required int orderNumber,
    required String processedAt,
    required ShippingAddress shippingAddress,
    required String statusUrl,
    required PriceV2 subtotalPriceV2,
    required PriceV2 totalPriceV2,
    required PriceV2 totalShippingPriceV2,
    required PriceV2 totalTaxV2,
    PriceV2? totalRefundedV2,
    String? phone,
    String? cursor,
  }) = _Order;

  static Order fromGraphJson(Map<String, dynamic> json) {
    return Order(
        id: (json['node'] ?? const {})['id'],
        email: (json['node'] ?? const {})['email'],
        currencyCode: (json['node'] ?? const {})['currencyCode'],
        customerUrl: (json['node'] ?? const {})['customerUrl'],
        lineItems: LineItemsOrder.fromJson(
            (json['node'] ?? const {})['lineItems'] ?? const {}),
        name: (json['node'] ?? const {})['name'],
        orderNumber: (json['node'] ?? const {})['orderNumber'],
        phone: (json['node'] ?? const {})['phone'],
        processedAt: (json['node'] ?? const {})['processedAt'],
        shippingAddress: ShippingAddress.fromJson(
            (json['node'] ?? const {})['shippingAddress'] ?? const {}),
        statusUrl: (json['node'] ?? const {})['statusUrl'],
        subtotalPriceV2: PriceV2.fromJson(
            (json['node'] ?? const {})['subtotalPriceV2'] ?? const {}),
        totalPriceV2: PriceV2.fromJson(
            (json['node'] ?? const {})['totalPriceV2'] ?? const {}),
        totalRefundedV2: PriceV2.fromJson(
            (json['node'] ?? const {})['totalRefundedV2'] ?? const {}),
        totalShippingPriceV2: PriceV2.fromJson(
            (json['node'] ?? const {})['totalShippingPriceV2'] ?? const {}),
        totalTaxV2: PriceV2.fromJson(
            (json['node'] ?? const {})['totalTaxV2'] ?? const {}),
        cursor: json['cursor']);
  }

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
