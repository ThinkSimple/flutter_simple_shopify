import 'package:flutter_simple_shopify/models/json_helper.dart';
import 'package:flutter_simple_shopify/models/src/checkout/line_item/line_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_response.freezed.dart';
part 'checkout_response.g.dart';

@freezed
class CheckoutResponse with _$CheckoutResponse {
  const CheckoutResponse._();

  factory CheckoutResponse({
    required String id,
    required String webUrl,
    @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
        required List<LineItem> lineItems,
  }) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
}
