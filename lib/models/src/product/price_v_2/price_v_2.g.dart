// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_v_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceV2 _$_$_PriceV2FromJson(Map<String, dynamic> json) {
  return _$_PriceV2(
<<<<<<< HEAD
    amount: JsonHelper.amountFromJson(json['amount']),
    currencyCode: json['currencyCode'] as String,
=======
    amount: (json['amount'] as num?)?.toDouble(),
    currencyCode: json['currencyCode'] as String?,
    currencySymbol: json['currencySymbol'] as String?,
    formattedPrice: json['formattedPrice'] as String?,
>>>>>>> 2d6263621e135f317a6c1d78b936d8941299f648
  );
}

Map<String, dynamic> _$_$_PriceV2ToJson(_$_PriceV2 instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
