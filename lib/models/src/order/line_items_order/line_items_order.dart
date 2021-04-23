import 'package:flutter_simple_shopify/models/src/order/line_item_order/line_item_order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_items_order.freezed.dart';
part 'line_items_order.g.dart';

@freezed
class LineItemsOrder with _$LineItemsOrder {
  factory LineItemsOrder({required List<LineItemOrder> lineItemOrderList}) =
      _LineItemsOrder;

  factory LineItemsOrder.fromJson(Map<String, dynamic> json) =>
      _$LineItemsOrderFromJson(json);

  static LineItemsOrder fromGraphJson(Map<String, dynamic> json) {
    return LineItemsOrder(lineItemOrderList: _getLineItemOrderList(json));
  }

  static _getLineItemOrderList(Map<String, dynamic> json) {
    List<LineItemOrder> lineItemListOrder = [];
    json['edges']?.forEach((lineItemOrder) =>
        lineItemListOrder.add(LineItemOrder.fromGraphJson(lineItemOrder)));
    return lineItemListOrder;
  }
}
