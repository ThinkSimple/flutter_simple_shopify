import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopify_image.freezed.dart';

@freezed
class ShopifyImage with _$ShopifyImage {
  const ShopifyImage._();

  factory ShopifyImage({
    String? altText,
    String? originalSource,
    String? id,
  }) = _ShopifyImage;

  static ShopifyImage fromJson(Map<String, dynamic> json) {
    return ShopifyImage(
        altText: json['altText'],
        originalSource: json['originalSrc'],
        id: json['id']);
  }
}
