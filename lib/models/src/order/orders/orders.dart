import '../order.dart';

class Orders {
  final List<Order>? orderList;
  final bool? hasNextPage;

  Orders({this.orderList, this.hasNextPage});

  static Orders fromJson(Map<String, dynamic> json) {
    return Orders(
        orderList: _getOrderList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Order> _getOrderList(Map<String, dynamic> json) {
    List<Order> orderList = [];
    json['edges']?.forEach((e) => orderList.add(Order.fromJson(e ?? const {})));
    return orderList;
  }
}
