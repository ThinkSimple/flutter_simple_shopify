import 'package:flutter_simple_shopify/models/src/order/order.dart';
import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'applied_gift_cards/applied_gift_cards.dart';
import 'available_shipping_rates/available_shipping_rates.dart';
import 'line_items/line_items.dart';
import 'mailing_address/mailing_address.dart';
import 'shipping_rates/shipping_rates.dart';

part 'checkout.freezed.dart';

@freezed
class Checkout with _$Checkout {
  const Checkout._();

  factory Checkout({
    String? id,
    String? email,
    List<AppliedGiftCards>? appliedGiftcards,
    AvailableShippingRates? availableShippingrates,
    ShippingRates? shippingLine,
    MailingAddress? shippingAddress,
    String? completedAt,
    String? createdAt,
    String? currencyCode,
    LineItems? lineItems,
    String? note,
    String? webUrl,
    String? updatedAt,
    PriceV2? totalTaxV2,
    PriceV2? totalPriceV2,
    bool? taxesIncluded,
    bool? taxExempt,
    PriceV2? subtotalPriceV2,
    String? orderStatusUrl,
    bool? requiresShipping,
    Order? order,
  }) = _Checkout;

  static Checkout fromJson(Map<String, dynamic> json) {
    return Checkout(
      id: json['id'],
      email: json['email'],
      appliedGiftcards: _getAppliedGiftCards(json),
      availableShippingrates: AvailableShippingRates.fromJson(
          json['availableShippingRates'] ?? const {}),
      shippingLine: ShippingRates.fromJson(json['shippingLine'] ?? const {}),
      shippingAddress:
          MailingAddress.fromJson(json['shippingAddress'] ?? const {}),
      completedAt: json['completedAt'],
      createdAt: json['createdAt'],
      currencyCode: json['currencyCode'],
      lineItems: LineItems.fromJson(json['lineItems']),
      note: json['note'],
      webUrl: json['webUrl'],
      updatedAt: json['updatedAt'],
      totalTaxV2: PriceV2.fromJson(json['totalTaxV2'] ?? const {}),
      totalPriceV2: PriceV2.fromJson(json['totalPriceV2'] ?? const {}),
      taxesIncluded: json['taxesIncluded'],
      taxExempt: json['taxExempt'],
      subtotalPriceV2: PriceV2.fromJson(json['subtotalPriceV2'] ?? const {}),
      orderStatusUrl: json['orderStatusUrl'],
      requiresShipping: json['requiresShipping'],
      order: Order.fromJson(json['order'] ?? const {}),
    );
  }

  static List<AppliedGiftCards> _getAppliedGiftCards(
      Map<String, dynamic> json) {
    List<AppliedGiftCards> appliedGiftCardsList = [];
    json['appliedGiftCards']?.forEach((e) =>
        appliedGiftCardsList.add(AppliedGiftCards.fromJson(e ?? const {})));
    return appliedGiftCardsList;
  }
}
