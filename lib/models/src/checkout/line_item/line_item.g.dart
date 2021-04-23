// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItem _$_$_LineItemFromJson(Map<String, dynamic> json) {
  return _$_LineItem(
    id: json['id'] as String?,
    quantity: json['quantity'] as int?,
    variant: json['variant'] == null
        ? null
        : ProductVariantCheckout.fromJson(
            json['variant'] as Map<String, dynamic>),
    title: json['title'] as String?,
  );
}

Map<String, dynamic> _$_$_LineItemToJson(_$_LineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'variant': instance.variant,
      'title': instance.title,
    };
