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
    required String id,
    required String email,
    required AvailableShippingRates? availableShippingrates,
    required ShippingRates shippingLine,
    required MailingAddress shippingAddress,
    required String createdAt,
    required String currencyCode,
    required LineItems lineItems,
    required PriceV2 totalTaxV2,
    required PriceV2 totalPriceV2,
    required bool taxesIncluded,
    required bool taxExempt,
    required PriceV2 subtotalPriceV2,
    required String orderStatusUrl,
    required bool requiresShipping,
    required Order order,
    @Default([]) List<AppliedGiftCards> appliedGiftcards,
    String? completedAt,
    String? note,
    String? webUrl,
    String? updatedAt,
  }) = _Checkout;

  factory Checkout.fromJson(Map<String, dynamic> json) =>
      _$CheckoutFromJson(json);
}
