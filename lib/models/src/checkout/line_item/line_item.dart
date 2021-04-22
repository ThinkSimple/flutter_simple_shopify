import 'package:flutter_simple_shopify/models/src/checkout/product_variant_checkout/product_variant_checkout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_item.freezed.dart';

@freezed
class LineItem with _$LineItem {
  const LineItem._();
  factory LineItem(
      {String? id,
      int? quantity,
      ProductVariantCheckout? variant,
      String? title}) = _LineItem;

  static LineItem fromJson(Map<String, dynamic> json) {
    return LineItem(
      id: (json['node'] ?? const {})['id'],
      quantity: (json['node'] ?? const {})['quantity'],
      variant: ProductVariantCheckout.fromJson(
          ((json['node'] ?? const {})['variant'] ?? const {})),
      title: (json['node'] ?? const {})['title'],
    );
  }
}
