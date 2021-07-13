import 'package:flutter_simple_shopify/models/src/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
class Products with _$Products {
  const Products._();
  factory Products(
      {required List<Product> productList,
      required bool hasNextPage}) = _Products;

  static Products fromGraphJson(Map<String, dynamic> json) {
    return Products(
        productList: _getProductList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage'] ?? false);
  }

  static List<Product> _getProductList(Map<String, dynamic> json) {
    return (json['edges'] as List?)
            ?.map((e) => Product.fromGraphJson(e ?? const {}))
            .toList() ??
        const <Product>[];
  }

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
