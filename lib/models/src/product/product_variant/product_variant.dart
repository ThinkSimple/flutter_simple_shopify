import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:flutter_simple_shopify/models/src/product/selected_option/selected_option.dart';
import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:flutter_simple_shopify/models/src/product/unit_price_measurement/unit_price_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

@freezed
class ProductVariant with _$ProductVariant {
  const ProductVariant._();
  factory ProductVariant({
    required PriceV2 price,
    required String title,
    required double weight,
    required String weightUnit,
    required bool availableForSale,
    required String sku,
    required bool requiresShipping,
    required String id,
    required int quantityAvailable,
    PriceV2? unitPrice,
    UnitPriceMeasurement? unitPriceMeasurement,
    List<SelectedOption>? selectedOptions,
    PriceV2? compareAtPrice,
    ShopifyImage? image,
  }) = _ProductVariant;

  static ProductVariant fromGraphJson(Map<String, dynamic> json) {
    Map<String, dynamic> nodeJson = json['node'] ?? const {};

    return ProductVariant(
      price: PriceV2.fromJson(nodeJson['priceV2']),
      title: nodeJson['title'],
      image: nodeJson['image'] != null
          ? ShopifyImage.fromJson(nodeJson['image'])
          : null,
      compareAtPrice: nodeJson['compareAtPriceV2'] != null
          ? PriceV2.fromJson(nodeJson['compareAtPriceV2'])
          : null,
      weight: nodeJson['weight'],
      weightUnit: nodeJson['weightUnit'],
      availableForSale: nodeJson['availableForSale'],
      sku: nodeJson['sku'],
      requiresShipping: nodeJson['requiresShipping'],
      id: nodeJson['id'],
      quantityAvailable: nodeJson['quantityAvailable'],
      unitPrice: nodeJson['unitPrice'] != null
          ? PriceV2.fromJson(nodeJson['unitPrice'])
          : null,
      unitPriceMeasurement: nodeJson['unitPriceMeasurement'] != null
          ? UnitPriceMeasurement.fromJson(nodeJson['unitPriceMeasurement'])
          : null,
      selectedOptions: _getOptionList((nodeJson)),
    );
  }

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);

  static List<SelectedOption> _getOptionList(Map<String, dynamic> json) {
    List<SelectedOption> optionList = [];
    json['selectedOptions']?.forEach((v) {
      if (v != null) optionList.add(SelectedOption.fromJson(v ?? const {}));
    });
    return optionList;
  }
}
