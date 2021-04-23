import 'package:flutter_simple_shopify/models/src/order/order.dart';
import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'applied_gift_cards/applied_gift_cards.dart';
import 'available_shipping_rates/available_shipping_rates.dart';
import 'line_items/line_items.dart';
import 'mailing_address/mailing_address.dart';
import 'shipping_rates/shipping_rates.dart';

part 'checkout.freezed.dart';
part 'checkout.g.dart';

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
    @JsonKey(fromJson: priceV2FromJson) PriceV2? totalTaxV2,
    @JsonKey(fromJson: priceV2FromJson) PriceV2? totalPriceV2,
    bool? taxesIncluded,
    bool? taxExempt,
    @JsonKey(fromJson: priceV2FromJson) PriceV2? subtotalPriceV2,
    String? orderStatusUrl,
    bool? requiresShipping,
    Order? order,
  }) = _Checkout;

  factory Checkout.fromJson(Map<String, dynamic> json) =>
      _$CheckoutFromJson(json);
}
