// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_gift_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppliedGiftCards _$_$_AppliedGiftCardsFromJson(Map<String, dynamic> json) {
  return _$_AppliedGiftCards(
    amountUsedV2: json['amountUsedV2'] == null
        ? null
        : PriceV2.fromJson(json['amountUsedV2'] as Map<String, dynamic>),
    balanceV2: json['balanceV2'] == null
        ? null
        : PriceV2.fromJson(json['balanceV2'] as Map<String, dynamic>),
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$_$_AppliedGiftCardsToJson(
        _$_AppliedGiftCards instance) =>
    <String, dynamic>{
      'amountUsedV2': instance.amountUsedV2,
      'balanceV2': instance.balanceV2,
      'id': instance.id,
    };
