// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItemOrder _$_$_LineItemOrderFromJson(Map<String, dynamic> json) {
  return _$_LineItemOrder(
    currentQuantity: json['currentQuantity'] as int?,
    discountAllocations: (json['discountAllocations'] as List<dynamic>?)
        ?.map((e) => DiscountAllocations.fromJson(e as Map<String, dynamic>))
        .toList(),
    discountedTotalPrice: json['discountedTotalPrice'] == null
        ? null
        : PriceV2.fromJson(
            json['discountedTotalPrice'] as Map<String, dynamic>),
    originalTotalPrice: json['originalTotalPrice'] == null
        ? null
        : PriceV2.fromJson(json['originalTotalPrice'] as Map<String, dynamic>),
    quantity: json['quantity'] as int?,
    title: json['title'] as String?,
    variant: json['variant'] == null
        ? null
        : ProductVariantCheckout.fromJson(
            json['variant'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LineItemOrderToJson(_$_LineItemOrder instance) =>
    <String, dynamic>{
      'currentQuantity': instance.currentQuantity,
      'discountAllocations': instance.discountAllocations,
      'discountedTotalPrice': instance.discountedTotalPrice,
      'originalTotalPrice': instance.originalTotalPrice,
      'quantity': instance.quantity,
      'title': instance.title,
      'variant': instance.variant,
    };
