// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Orders _$_$_OrdersFromJson(Map<String, dynamic> json) {
  return _$_Orders(
    orderList: (json['orderList'] as List<dynamic>)
        .map((e) => Order.fromJson(e as Map<String, dynamic>))
        .toList(),
    hasNextPage: json['hasNextPage'] as bool,
  );
}

Map<String, dynamic> _$_$_OrdersToJson(_$_Orders instance) => <String, dynamic>{
      'orderList': instance.orderList,
      'hasNextPage': instance.hasNextPage,
    };
