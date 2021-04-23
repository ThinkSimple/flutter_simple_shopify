import 'package:flutter_simple_shopify/models/src/checkout/line_items/line_items.dart';
import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_incomplete_checkout.freezed.dart';
part 'last_incomplete_checkout.g.dart';

@freezed
class LastIncompleteCheckout with _$LastIncompleteCheckout {
  factory LastIncompleteCheckout(
      {String? completedAt,
      String? createdAt,
      String? email,
      String? id,
      String? currencyCode,
      String? webUrl,
      @JsonKey(fromJson: priceV2FromJson) PriceV2? totalPriceV2,
      @JsonKey(fromJson: priceV2FromJson) PriceV2? lineItemsSubtotalPrice,
      LineItems? lineItems}) = _LastIncompleteCheckout;

  factory LastIncompleteCheckout.fromJson(Map<String, dynamic> json) =>
      _$LastIncompleteCheckoutFromJson(json);
}
