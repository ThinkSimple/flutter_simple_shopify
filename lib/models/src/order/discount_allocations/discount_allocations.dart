import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_allocations.freezed.dart';
part 'discount_allocations.g.dart';

@freezed
class DiscountAllocations with _$DiscountAllocations {
  const DiscountAllocations._();
  factory DiscountAllocations({required PriceV2? allocatedAmount}) =
      _DiscountAllocations;

  factory DiscountAllocations.fromJson(Map<String, dynamic> json) =>
      _$DiscountAllocationsFromJson(json);
}
