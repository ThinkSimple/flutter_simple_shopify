import 'package:flutter_simple_shopify/models/src/checkout/line_item/line_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_items.freezed.dart';
part 'line_items.g.dart';

@freezed
class LineItems with _$LineItems {
  factory LineItems({required List<LineItem> lineItemList}) = _LineItems;

  factory LineItems.fromJson(Map<String, dynamic> json) =>
      _$LineItemsFromJson(json);

  static LineItems fromGraphJson(Map<String, dynamic> json) {
    return LineItems(lineItemList: _getLineItemList(json));
  }

  static List<LineItem> _getLineItemList(Map<String, dynamic> json) {
    List<LineItem> lineItemList = [];
    json['edges']?.forEach((lineItem) =>
        lineItemList.add(LineItem.fromGraphJson(lineItem ?? const {})));
    return lineItemList;
  }
}
