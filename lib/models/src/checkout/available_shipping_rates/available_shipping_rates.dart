import 'package:flutter_simple_shopify/models/src/checkout/shipping_rates/shipping_rates.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_shipping_rates.freezed.dart';

@freezed
class AvailableShippingRates with _$AvailableShippingRates {
  const AvailableShippingRates._();

  factory AvailableShippingRates(
      {bool? ready,
      List<ShippingRates>? shippingRates}) = _AvailableShippingRates;

  static AvailableShippingRates fromJson(Map<String, dynamic> json) {
    return AvailableShippingRates(
      ready: json['ready'],
      shippingRates: _getShippingRates(json),
    );
  }

  static List<ShippingRates> _getShippingRates(Map<String, dynamic> json) {
    List<ShippingRates> shippingRatesList = [];
    json['shippingRates']?.forEach(
        (e) => shippingRatesList.add(ShippingRates.fromJson(e ?? const {})));
    return shippingRatesList;
  }
}
