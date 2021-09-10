// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_rates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingRates _$$_ShippingRatesFromJson(Map<String, dynamic> json) =>
    _$_ShippingRates(
      handle: json['handle'] as String,
      title: json['title'] as String,
      priceV2: PriceV2.fromJson(json['priceV2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShippingRatesToJson(_$_ShippingRates instance) =>
    <String, dynamic>{
      'handle': instance.handle,
      'title': instance.title,
      'priceV2': instance.priceV2,
    };
