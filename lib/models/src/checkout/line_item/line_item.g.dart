// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItem _$$_LineItemFromJson(Map<String, dynamic> json) => _$_LineItem(
      title: json['title'] as String,
      quantity: json['quantity'] as int,
      discountAllocations: (json['discountAllocations'] as List<dynamic>)
          .map((e) => DiscountAllocations.fromJson(e as Map<String, dynamic>))
          .toList(),
      variantId: json['variantId'] as String?,
      id: json['id'] as String?,
      variant: json['variant'] == null
          ? null
          : ProductVariantCheckout.fromJson(
              json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LineItemToJson(_$_LineItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'quantity': instance.quantity,
      'discountAllocations': instance.discountAllocations,
      'variantId': instance.variantId,
      'id': instance.id,
      'variant': instance.variant,
    };
