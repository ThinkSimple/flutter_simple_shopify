import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../json_helper.dart';

part 'price_v_2.freezed.dart';
part 'price_v_2.g.dart';

@freezed
class PriceV2 with _$PriceV2 {
  static NumberFormat? priceFormat;

  PriceV2._();

  factory PriceV2({
    @JsonKey(fromJson: JsonHelper.amountFromJson) required double amount,
    required String currencyCode,
  }) = _PriceV2;

  factory PriceV2.fromJson(Map<String, dynamic> json) =>
      _$PriceV2FromJson(json);

  String get formattedPrice => JsonHelper.chooseRightOrderOnCurrencySymbol(
        this.amount,
        this.currencyCode,
        priceFormat: priceFormat,
      );
}
