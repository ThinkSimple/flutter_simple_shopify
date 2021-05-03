import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopify_image.freezed.dart';
part 'shopify_image.g.dart';

@freezed
class ShopifyImage with _$ShopifyImage {
  const ShopifyImage._();

  factory ShopifyImage({
    required String altText,
    required String originalSrc,
    required String id,
  }) = _ShopifyImage;

  factory ShopifyImage.fromJson(Map<String, dynamic> json) =>
      _$ShopifyImageFromJson(json);
}
