import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_rates.freezed.dart';
part 'shipping_rates.g.dart';

@freezed
class ShippingRates with _$ShippingRates {
  const ShippingRates._();
  factory ShippingRates(
      {required String handle,
      required String title,
      required PriceV2 priceV2}) = _ShippingRates;

  factory ShippingRates.fromJson(Map<String, dynamic> json) =>
      _$ShippingRatesFromJson(json);
}
