import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:flutter_simple_shopify/models/src/product/selected_option/selected_option.dart';
import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:flutter_simple_shopify/models/src/product/unit_price_measurement/unit_price_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant.freezed.dart';

@freezed
class ProductVariant with _$ProductVariant {
  const ProductVariant._();
  factory ProductVariant(
      {PriceV2? price,
      String? title,
      ShopifyImage? image,
      PriceV2? compareAtPrice,
      double? weight,
      String? weightUnit,
      bool? availableForSale,
      String? sku,
      bool? requiresShipping,
      String? id,
      int? quantityAvailable,
      PriceV2? unitPrice,
      UnitPriceMeasurement? unitPriceMeasurement,
      List<SelectedOption>? selectedOptions}) = _ProductVariant;

  static ProductVariant fromJson(Map<String, dynamic> json) {
    return ProductVariant(
      price:
          PriceV2.fromJson((json['node'] ?? const {})['priceV2'] ?? const {}),
      title: (json['node'] ?? const {})['title'],
      image: ShopifyImage.fromJson(
          (json['node'] ?? const {})['image'] ?? const {}),
      compareAtPrice: PriceV2.fromJson(
          (json['node'] ?? const {})['compareAtPriceV2'] ?? const {}),
      weight: (json['node'] ?? const {})['weight'],
      weightUnit: (json['node'] ?? const {})['weightUnit'],
      availableForSale: (json['node'] ?? const {})['availableForSale'],
      sku: (json['node'] ?? const {})['sku'],
      requiresShipping: (json['node'] ?? const {})['requiresShipping'],
      id: (json['node'] ?? const {})['id'],
      quantityAvailable: (json['node'] ?? const {})['quantityAvailable'],
      unitPrice:
          PriceV2.fromJson((json['node'] ?? const {})['unitPrice'] ?? const {}),
      unitPriceMeasurement: UnitPriceMeasurement.fromJson(
          (json['node'] ?? const {})['unitPriceMeasurement'] ?? const {}),
      selectedOptions: _getOptionList((json['node'] ?? const {})),
    );
  }

  static List<SelectedOption> _getOptionList(Map<String, dynamic> json) {
    List<SelectedOption> optionList = [];
    json['selectedOptions']?.forEach((v) {
      if (v != null) optionList.add(SelectedOption.fromJson(v ?? const {}));
    });
    return optionList;
  }
}
