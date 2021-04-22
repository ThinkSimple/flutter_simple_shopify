import 'package:flutter_simple_shopify/models/src/order/line_item_order/line_item_order.dart';

class LineItemsOrder {
  final List<LineItemOrder>? lineItemOrderList;

  LineItemsOrder({this.lineItemOrderList});

  static LineItemsOrder fromJson(Map<String, dynamic> json) {
    return LineItemsOrder(lineItemOrderList: _getLineItemOrderList(json));
  }

  static _getLineItemOrderList(Map<String, dynamic> json) {
    List<LineItemOrder> lineItemListOrder = [];
    json['edges']?.forEach((lineItemOrder) =>
        lineItemListOrder.add(LineItemOrder.fromJson(lineItemOrder)));
    return lineItemListOrder;
  }
}
