// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_items_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineItemsOrder _$$_LineItemsOrderFromJson(Map<String, dynamic> json) =>
    _$_LineItemsOrder(
      lineItemOrderList: (json['lineItemOrderList'] as List<dynamic>)
          .map((e) => LineItemOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LineItemsOrderToJson(_$_LineItemsOrder instance) =>
    <String, dynamic>{
      'lineItemOrderList': instance.lineItemOrderList,
    };
