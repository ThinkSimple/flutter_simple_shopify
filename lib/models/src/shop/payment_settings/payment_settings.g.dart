// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentSettings _$$_PaymentSettingsFromJson(Map<String, dynamic> json) =>
    _$_PaymentSettings(
      acceptedCardBrands: (json['acceptedCardBrands'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cardVaultUrl: json['cardVaultUrl'] as String?,
      countryCode: json['countryCode'] as String?,
      currencyCode: json['currencyCode'] as String?,
      enabledPresentmentCurrencies:
          (json['enabledPresentmentCurrencies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      shopifyPaymentAccountId: json['shopifyPaymentAccountId'] as String?,
      supportedDigitalWallets:
          (json['supportedDigitalWallets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_PaymentSettingsToJson(_$_PaymentSettings instance) =>
    <String, dynamic>{
      'acceptedCardBrands': instance.acceptedCardBrands,
      'cardVaultUrl': instance.cardVaultUrl,
      'countryCode': instance.countryCode,
      'currencyCode': instance.currencyCode,
      'enabledPresentmentCurrencies': instance.enabledPresentmentCurrencies,
      'shopifyPaymentAccountId': instance.shopifyPaymentAccountId,
      'supportedDigitalWallets': instance.supportedDigitalWallets,
    };
