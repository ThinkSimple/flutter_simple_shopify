// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_allocations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountAllocations _$_$_DiscountAllocationsFromJson(
    Map<String, dynamic> json) {
  return _$_DiscountAllocations(
    allocatedAmount: json['allocatedAmount'] == null
        ? null
        : PriceV2.fromJson(json['allocatedAmount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DiscountAllocationsToJson(
        _$_DiscountAllocations instance) =>
    <String, dynamic>{
      'allocatedAmount': instance.allocatedAmount,
    };
