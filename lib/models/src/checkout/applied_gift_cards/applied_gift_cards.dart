import 'package:flutter_simple_shopify/models/src/product/price_v_2/price_v_2.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'applied_gift_cards.freezed.dart';

@freezed
class AppliedGiftCards with _$AppliedGiftCards {
  const AppliedGiftCards._();

  factory AppliedGiftCards(
      {PriceV2? amountUsedV2,
      PriceV2? balanceV2,
      String? id}) = _AppliedGiftCards;

  static AppliedGiftCards fromJson(Map<String, dynamic> json) {
    return AppliedGiftCards(
        amountUsedV2: PriceV2.fromJson(json['amountUsedV2'] ?? const {}),
        balanceV2: PriceV2.fromJson(json['balanceV2'] ?? const {}),
        id: json['id']);
  }
}
