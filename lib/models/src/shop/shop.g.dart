// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shop _$$_ShopFromJson(Map<String, dynamic> json) => _$_Shop(
      description: json['description'] as String?,
      moneyFormat: json['moneyFormat'] as String?,
      name: json['name'] as String?,
      paymentSettings: json['paymentSettings'] == null
          ? null
          : PaymentSettings.fromJson(
              json['paymentSettings'] as Map<String, dynamic>),
      primaryDomain: json['primaryDomain'] == null
          ? null
          : PrimaryDomain.fromJson(
              json['primaryDomain'] as Map<String, dynamic>),
      privacyPolicy: json['privacyPolicy'] == null
          ? null
          : PrivacyPolicy.fromJson(
              json['privacyPolicy'] as Map<String, dynamic>),
      refundPolicy: json['refundPolicy'] == null
          ? null
          : RefundPolicy.fromJson(json['refundPolicy'] as Map<String, dynamic>),
      shipsToCountries: (json['shipsToCountries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      termsOfService: json['termsOfService'] == null
          ? null
          : TermsOfService.fromJson(
              json['termsOfService'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopToJson(_$_Shop instance) => <String, dynamic>{
      'description': instance.description,
      'moneyFormat': instance.moneyFormat,
      'name': instance.name,
      'paymentSettings': instance.paymentSettings,
      'primaryDomain': instance.primaryDomain,
      'privacyPolicy': instance.privacyPolicy,
      'refundPolicy': instance.refundPolicy,
      'shipsToCountries': instance.shipsToCountries,
      'termsOfService': instance.termsOfService,
    };
