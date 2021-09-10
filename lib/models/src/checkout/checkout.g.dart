// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkout _$$_CheckoutFromJson(Map<String, dynamic> json) => _$_Checkout(
      id: json['id'] as String,
      ready: json['ready'] as bool,
      availableShippingRates: json['availableShippingRates'] == null
          ? null
          : AvailableShippingRates.fromJson(
              json['availableShippingRates'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      currencyCode: json['currencyCode'] as String,
      totalTaxV2: PriceV2.fromJson(json['totalTaxV2'] as Map<String, dynamic>),
      totalPriceV2:
          PriceV2.fromJson(json['totalPriceV2'] as Map<String, dynamic>),
      taxesIncluded: json['taxesIncluded'] as bool,
      taxExempt: json['taxExempt'] as bool,
      subtotalPriceV2:
          PriceV2.fromJson(json['subtotalPriceV2'] as Map<String, dynamic>),
      requiresShipping: json['requiresShipping'] as bool,
      appliedGiftCards: (json['appliedGiftCards'] as List<dynamic>)
          .map((e) => AppliedGiftCards.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineItems: JsonHelper.lineItems(json['lineItems']),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      orderStatusUrl: json['orderStatusUrl'] as String?,
      shopifyPaymentsAccountId: json['shopifyPaymentsAccountId'] as String?,
      shippingAddress: json['shippingAddress'] == null
          ? null
          : MailingAddress.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
      shippingLine: json['shippingLine'] == null
          ? null
          : ShippingRates.fromJson(
              json['shippingLine'] as Map<String, dynamic>),
      email: json['email'] as String?,
      completedAt: json['completedAt'] as String?,
      note: json['note'] as String?,
      webUrl: json['webUrl'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CheckoutToJson(_$_Checkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ready': instance.ready,
      'availableShippingRates': instance.availableShippingRates,
      'createdAt': instance.createdAt,
      'currencyCode': instance.currencyCode,
      'totalTaxV2': instance.totalTaxV2,
      'totalPriceV2': instance.totalPriceV2,
      'taxesIncluded': instance.taxesIncluded,
      'taxExempt': instance.taxExempt,
      'subtotalPriceV2': instance.subtotalPriceV2,
      'requiresShipping': instance.requiresShipping,
      'appliedGiftCards': instance.appliedGiftCards,
      'lineItems': instance.lineItems,
      'order': instance.order,
      'orderStatusUrl': instance.orderStatusUrl,
      'shopifyPaymentsAccountId': instance.shopifyPaymentsAccountId,
      'shippingAddress': instance.shippingAddress,
      'shippingLine': instance.shippingLine,
      'email': instance.email,
      'completedAt': instance.completedAt,
      'note': instance.note,
      'webUrl': instance.webUrl,
      'updatedAt': instance.updatedAt,
    };
