import 'package:flutter_simple_shopify/models/src/product/products/products.dart';
import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  const Collection._();
  factory Collection({
    required String title,
    required String id,
    required Products products,
    required String cursor,
    @Default('') String description,
    @Default('') String descriptionHtml,
    @Default('') String handle,
    @Default('') String updatedAt,
    ShopifyImage? image,
  }) = _Collection;

  static Collection fromGraphJson(Map<String, dynamic> json) {
    Map<String, dynamic> nodeJson = json['node'] ?? const {};

    return Collection(
      title: nodeJson['title'],
      description: nodeJson['description'],
      descriptionHtml: nodeJson['descriptionHtml'],
      handle: nodeJson['handle'],
      id: nodeJson['id'],
      updatedAt: nodeJson['updatedAt'],
      image: nodeJson['image'] != null
          ? ShopifyImage.fromJson(
              (json['node'] ?? const {})['image'] ?? const {})
          : null,
      products: Products.fromGraphJson(nodeJson['products'] ?? const {}),
      cursor: json['cursor'],
    );
  }

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
