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
    return ProductVariant(
      price: PriceV2.fromJson((json['node'])['priceV2'] ?? const {}),
      title: (json['node'])['title'],
      image: ShopifyImage.fromJson((json['node'])['image'] ?? const {}),
      compareAtPrice:
          PriceV2.fromJson((json['node'])['compareAtPriceV2'] ?? const {}),
      weight: (json['node'])['weight'],
      weightUnit: (json['node'])['weightUnit'],
      availableForSale: (json['node'])['availableForSale'],
      sku: (json['node'])['sku'],
      requiresShipping: (json['node'])['requiresShipping'],
      id: (json['node'])['id'],
      quantityAvailable: (json['node'])['quantityAvailable'],
      unitPrice: json['node']['unitPrice'] == null
          ? null
          : PriceV2.fromJson((json['node'])['unitPrice']),
      unitPriceMeasurement: json['node']['unitPriceMeasurement'] == null
          ? null
          : UnitPriceMeasurement.fromJson(json['node']['unitPriceMeasurement']),
      selectedOptions: _getOptionList((json['node'])),
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
