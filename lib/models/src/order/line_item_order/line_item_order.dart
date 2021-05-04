import 'package:flutter_simple_shopify/models/src/checkout/product_variant_checkout/product_variant_checkout.dart';
import 'package:flutter_simple_shopify/models/src/order/discount_allocations/discount_allocations.dart';
import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_item_order.freezed.dart';
part 'line_item_order.g.dart';

@freezed
class LineItemOrder with _$LineItemOrder {
  const LineItemOrder._();

  factory LineItemOrder({
    required int currentQuantity,
    required PriceV2 discountedTotalPrice,
    required PriceV2 originalTotalPrice,
    required int quantity,
    required String title,
    @Default([]) List<DiscountAllocations> discountAllocations,
    @Default(null) ProductVariantCheckout? variant,
  }) = _LineItemOrder;

  factory LineItemOrder.fromJson(Map<String, dynamic> json) =>
      _$LineItemOrderFromJson(json);

  static LineItemOrder fromGraphJson(Map<String, dynamic> json) {
    return LineItemOrder(
        currentQuantity: (json['node'] ?? const {})['currentQuantity'],
        discountAllocations: _getDiscountAllocationsList(json),
        discountedTotalPrice: PriceV2.fromJson(
            (json['node'] ?? const {})['discountedTotalPrice']),
        originalTotalPrice:
            PriceV2.fromJson((json['node'] ?? const {})['originalTotalPrice']),
        quantity: (json['node'] ?? const {})['quantity'],
        title: (json['node'] ?? const {})['title'],
        variant: ProductVariantCheckout.fromJson(
            (json['node'] ?? const {})['variant'] ?? const {}));
  }

  static _getDiscountAllocationsList(Map<String, dynamic> json) {
    List<DiscountAllocations> discountList = [];
    (json['node'] ?? const {})['discountAllocations']?.forEach(
        (discount) => discountList.add(DiscountAllocations.fromJson(discount)));
    return discountList;
  }
}
