// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItems _$$_LineItemsFromJson(Map<String, dynamic> json) => _$_LineItems(
      lineItemList: (json['lineItemList'] as List<dynamic>)
          .map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LineItemsToJson(_$_LineItems instance) =>
    <String, dynamic>{
      'lineItemList': instance.lineItemList,
    };
