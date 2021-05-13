// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckoutResponse _$_$_CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _$_CheckoutResponse(
    id: json['id'] as String,
    webUrl: json['webUrl'] as String,
    lineItems: JsonHelper.lineItems(json['lineItems']),
  );
}

Map<String, dynamic> _$_$_CheckoutResponseToJson(
        _$_CheckoutResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'webUrl': instance.webUrl,
      'lineItems': instance.lineItems,
    };
