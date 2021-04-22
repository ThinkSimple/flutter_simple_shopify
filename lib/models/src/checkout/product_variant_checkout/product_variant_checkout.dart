import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant_checkout.freezed.dart';

@freezed
class ProductVariantCheckout with _$ProductVariantCheckout {
  const ProductVariantCheckout._();

  factory ProductVariantCheckout({
    PriceV2? price,
    String? title,
    ShopifyImage? image,
    PriceV2? compareAtPrice,
    double? weight,
    String? weightUnit,
    bool? availableForSale,
    String? sku,
    bool? requiresShipping,
    String? id,
  }) = _ProductVariantCheckout;

  static ProductVariantCheckout fromJson(Map<String, dynamic> json) {
    return ProductVariantCheckout(
      price: PriceV2.fromJson(json['priceV2'] ?? const {}),
      title: json['title'],
      image: ShopifyImage.fromJson(json['image'] ?? const {}),
      compareAtPrice: PriceV2.fromJson(json['compareAtPriceV2'] ?? const {}),
      weight: json['weight'],
      weightUnit: json['weightUnit'],
      availableForSale: json['availableForSale'],
      sku: json['sku'],
      requiresShipping: json['requiresShipping'],
      id: json['id'],
    );
  }
}
