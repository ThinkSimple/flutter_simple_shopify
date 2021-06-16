// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItem _$_$_LineItemFromJson(Map<String, dynamic> json) {
  return _$_LineItem(
    title: json['title'] as String,
    quantity: json['quantity'] as int,
    variantId: json['variantId'] as String?,
    id: json['id'] as String?,
    variant: json['variant'] == null
        ? null
        : ProductVariantCheckout.fromJson(
            json['variant'] as Map<String, dynamic>),
    discountAllocations: json['discountAllocations'] == null
        ? null
        : DiscountAllocations.fromJson(
            json['discountAllocations'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LineItemToJson(_$_LineItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'quantity': instance.quantity,
      'variantId': instance.variantId,
      'id': instance.id,
      'variant': instance.variant,
      'discountAllocations': instance.discountAllocations,
    };
