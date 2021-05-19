import 'package:flutter_simple_shopify/models/src/checkout/product_variant_checkout/product_variant_checkout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_item.freezed.dart';
part 'line_item.g.dart';

@freezed
class LineItem with _$LineItem {
  const LineItem._();
  factory LineItem({
    required String title,
    String? id,
    required int quantity,
    ProductVariantCheckout? variant,
  }) = _LineItem;

  static LineItem fromGraphJson(Map<String, dynamic> json) {
    Map<String, dynamic> nodeJson = json['node'] ?? {};

    return LineItem(
      id: nodeJson['id'],
      quantity: nodeJson['quantity'],
      variant: nodeJson['variant'] != null
          ? ProductVariantCheckout.fromJson(nodeJson['variant'])
          : null,
      title: nodeJson['title'],
    );
  }

  factory LineItem.fromJson(Map<String, dynamic> json) =>
      _$LineItemFromJson(json);
}
