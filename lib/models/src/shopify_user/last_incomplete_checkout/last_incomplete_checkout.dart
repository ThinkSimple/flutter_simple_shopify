import 'package:flutter_simple_shopify/models/src/checkout/line_items/line_items.dart';
import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';

class LastIncompleteCheckout {
  final String? completedAt;
  final String? createdAt;
  final String? email;
  final String? id;
  final String? currencyCode;
  final String? webUrl;
  final PriceV2? totalPriceV2;
  final PriceV2? lineItemsSubtotalPrice;
  final LineItems? lineItems;

  LastIncompleteCheckout(
      {this.completedAt,
      this.createdAt,
      this.email,
      this.id,
      this.currencyCode,
      this.webUrl,
      this.totalPriceV2,
      this.lineItemsSubtotalPrice,
      this.lineItems});

  static LastIncompleteCheckout fromJson(Map<String, dynamic> json) {
    return LastIncompleteCheckout(
        completedAt: json['completedAt'],
        createdAt: json['createdAt'],
        email: json['email'],
        id: json['id'],
        currencyCode: json['currencyCode'],
        webUrl: json['webUrl'],
        totalPriceV2: PriceV2.fromJson(json['totalPriceV2'] ?? const {}),
        lineItemsSubtotalPrice:
            PriceV2.fromJson(json['lineItemsSubtotalPrice'] ?? const {}),
        lineItems: LineItems.fromJson(json['lineItems'] ?? const {}));
  }
}
