// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Orders _$$_OrdersFromJson(Map<String, dynamic> json) => _$_Orders(
    orderList: (json['edges'] as List<dynamic>)
        .map((e) => Order.fromGraphJson(e as Map<String, dynamic>))
        .toList(),
    hasNextPage: false //json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$$_OrdersToJson(_$_Orders instance) => <String, dynamic>{
      'orderList': instance.orderList,
      'hasNextPage': instance.hasNextPage,
    };
