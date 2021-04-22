import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_rates.freezed.dart';

@freezed
class ShippingRates with _$ShippingRates {
  const ShippingRates._();
  factory ShippingRates({String? handle, String? title, PriceV2? priceV2}) =
      _ShippingRates;

  static ShippingRates fromJson(Map<String, dynamic> json) {
    return ShippingRates(
        handle: json['handle'],
        title: json['title'],
        priceV2: PriceV2.fromJson(json['priceV2'] ?? const {}));
  }
}
