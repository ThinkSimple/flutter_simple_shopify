import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_settings/payment_settings.dart';
import 'primary_domain/primary_domain.dart';
import 'privacy_policy/privacy_policy.dart';
import 'refund_policy/refund_policy.dart';
import 'terms_of_service/terms_of_service.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';

@freezed
class Shop with _$Shop {
  factory Shop({
    String? description,
    String? moneyFormat,
    String? name,
    PaymentSettings? paymentSettings,
    PrimaryDomain? primaryDomain,
    PrivacyPolicy? privacyPolicy,
    RefundPolicy? refundPolicy,
    List<String>? shipsToCountries,
    TermsOfService? termsOfService,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}
