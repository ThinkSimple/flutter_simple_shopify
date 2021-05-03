// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_v_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceV2 _$_$_PriceV2FromJson(Map<String, dynamic> json) {
  return _$_PriceV2(
    amount: (json['amount'] as num?)?.toDouble(),
    currencyCode: json['currencyCode'] as String?,
    currencySymbol: json['currencySymbol'] as String?,
    formattedPrice: json['formattedPrice'] as String?,
  );
}

Map<String, dynamic> _$_$_PriceV2ToJson(_$_PriceV2 instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'currencySymbol': instance.currencySymbol,
      'formattedPrice': instance.formattedPrice,
    };
