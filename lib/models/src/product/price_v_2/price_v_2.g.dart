// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_v_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceV2 _$$_PriceV2FromJson(Map<String, dynamic> json) => _$_PriceV2(
      amount: JsonHelper.amountFromJson(json['amount']),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$_PriceV2ToJson(_$_PriceV2 instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
