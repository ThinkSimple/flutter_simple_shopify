import 'package:freezed_annotation/freezed_annotation.dart';

import '../order.dart';

part 'orders.freezed.dart';
part 'orders.g.dart';

@freezed
class Orders with _$Orders {
  factory Orders({required List<Order> orderList, required bool hasNextPage}) =
      _Orders;
      
  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  static Orders fromGraphJson(Map<String, dynamic> json) {
    return Orders(
        orderList: _getOrderList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Order> _getOrderList(Map<String, dynamic> json) {
    List<Order> orderList = [];
    json['edges']
        ?.forEach((e) => orderList.add(Order.fromGraphJson(e ?? const {})));
    return orderList;
  }
}
