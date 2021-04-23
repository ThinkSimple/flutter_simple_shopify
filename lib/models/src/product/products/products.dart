import 'package:flutter_simple_shopify/models/src/product/product.dart';

class Products {
  final List<Product>? productList;
  final bool? hasNextPage;

  Products({this.productList, this.hasNextPage});

  static Products fromJson(Map<String, dynamic> json) {
    return Products(
        productList: _getProductList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Product> _getProductList(Map<String, dynamic> json) {
    return (json['edges'] as List?)
            ?.map((e) => Product.fromGraphJson(e ?? const {}))
            .toList() ??
        const <Product>[];
  }
}
