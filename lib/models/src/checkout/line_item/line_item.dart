import 'package:flutter_simple_shopify/models/src/checkout/product_variant_checkout/product_variant_checkout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_item.freezed.dart';
part 'line_item.g.dart';

@freezed
class LineItem with _$LineItem {
  const LineItem._();
  factory LineItem({
    required String title,
    required String id,
    required int quantity,
    ProductVariantCheckout? variant,
  }) = _LineItem;

  static LineItem fromGraphJson(Map<String, dynamic> json) {
    return LineItem(
      id: (json['node'] ?? const {})['id'],
      quantity: (json['node'] ?? const {})['quantity'],
      variant: ProductVariantCheckout.fromJson(
          ((json['node'] ?? const {})['variant'] ?? const {})),
      title: (json['node'] ?? const {})['title'],
    );
  }

  factory LineItem.fromJson(Map<String, dynamic> json) =>
      _$LineItemFromJson(json);
}
