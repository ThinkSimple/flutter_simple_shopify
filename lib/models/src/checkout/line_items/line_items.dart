import 'package:flutter_simple_shopify/models/src/checkout/line_item/line_item.dart';

class LineItems {
  final List<LineItem>? lineItemList;

  LineItems({this.lineItemList});

  static LineItems fromJson(Map<String, dynamic> json) {
    return LineItems(lineItemList: _getLineItemList(json));
  }

  static List<LineItem> _getLineItemList(Map<String, dynamic> json) {
    List<LineItem> lineItemList = [];
    json['edges']?.forEach((lineItem) =>
        lineItemList.add(LineItem.fromJson(lineItem ?? const {})));
    return lineItemList;
  }
}
