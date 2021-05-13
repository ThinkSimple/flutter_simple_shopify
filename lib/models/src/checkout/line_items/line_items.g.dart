// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItems _$_$_LineItemsFromJson(Map<String, dynamic> json) {
  return _$_LineItems(
    lineItemList: (json['lineItemList'] as List<dynamic>)
        .map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LineItemsToJson(_$_LineItems instance) =>
    <String, dynamic>{
      'lineItemList': instance.lineItemList,
    };
