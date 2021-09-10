// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItemOrder _$$_LineItemOrderFromJson(Map<String, dynamic> json) =>
    _$_LineItemOrder(
      currentQuantity: json['currentQuantity'] as int,
      discountedTotalPrice: PriceV2.fromJson(
          json['discountedTotalPrice'] as Map<String, dynamic>),
      originalTotalPrice:
          PriceV2.fromJson(json['originalTotalPrice'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
      title: json['title'] as String,
      discountAllocations: (json['discountAllocations'] as List<dynamic>?)
              ?.map((e) =>
                  DiscountAllocations.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      variant: json['variant'] == null
          ? null
          : ProductVariantCheckout.fromJson(
              json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LineItemOrderToJson(_$_LineItemOrder instance) =>
    <String, dynamic>{
      'currentQuantity': instance.currentQuantity,
      'discountedTotalPrice': instance.discountedTotalPrice,
      'originalTotalPrice': instance.originalTotalPrice,
      'quantity': instance.quantity,
      'title': instance.title,
      'discountAllocations': instance.discountAllocations,
      'variant': instance.variant,
    };
