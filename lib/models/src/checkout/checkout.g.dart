// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkout _$_$_CheckoutFromJson(Map<String, dynamic> json) {
  return _$_Checkout(
    id: json['id'] as String?,
    email: json['email'] as String?,
    appliedGiftcards: (json['appliedGiftcards'] as List<dynamic>?)
        ?.map((e) => AppliedGiftCards.fromJson(e as Map<String, dynamic>))
        .toList(),
    availableShippingrates: json['availableShippingrates'] == null
        ? null
        : AvailableShippingRates.fromJson(
            json['availableShippingrates'] as Map<String, dynamic>),
    shippingLine: json['shippingLine'] == null
        ? null
        : ShippingRates.fromJson(json['shippingLine'] as Map<String, dynamic>),
    shippingAddress: json['shippingAddress'] == null
        ? null
        : MailingAddress.fromJson(
            json['shippingAddress'] as Map<String, dynamic>),
    completedAt: json['completedAt'] as String?,
    createdAt: json['createdAt'] as String?,
    currencyCode: json['currencyCode'] as String?,
    lineItems: json['lineItems'] == null
        ? null
        : LineItems.fromJson(json['lineItems'] as Map<String, dynamic>),
    note: json['note'] as String?,
    webUrl: json['webUrl'] as String?,
    updatedAt: json['updatedAt'] as String?,
    totalTaxV2: json['totalTaxV2'] == null
        ? null
        : PriceV2.fromJson(json['totalTaxV2'] as Map<String, dynamic>),
    totalPriceV2: json['totalPriceV2'] == null
        ? null
        : PriceV2.fromJson(json['totalPriceV2'] as Map<String, dynamic>),
    taxesIncluded: json['taxesIncluded'] as bool?,
    taxExempt: json['taxExempt'] as bool?,
    subtotalPriceV2: json['subtotalPriceV2'] == null
        ? null
        : PriceV2.fromJson(json['subtotalPriceV2'] as Map<String, dynamic>),
    orderStatusUrl: json['orderStatusUrl'] as String?,
    requiresShipping: json['requiresShipping'] as bool?,
    order: json['order'] == null
        ? null
        : Order.fromJson(json['order'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CheckoutToJson(_$_Checkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'appliedGiftcards': instance.appliedGiftcards,
      'availableShippingrates': instance.availableShippingrates,
      'shippingLine': instance.shippingLine,
      'shippingAddress': instance.shippingAddress,
      'completedAt': instance.completedAt,
      'createdAt': instance.createdAt,
      'currencyCode': instance.currencyCode,
      'lineItems': instance.lineItems,
      'note': instance.note,
      'webUrl': instance.webUrl,
      'updatedAt': instance.updatedAt,
      'totalTaxV2': instance.totalTaxV2,
      'totalPriceV2': instance.totalPriceV2,
      'taxesIncluded': instance.taxesIncluded,
      'taxExempt': instance.taxExempt,
      'subtotalPriceV2': instance.subtotalPriceV2,
      'orderStatusUrl': instance.orderStatusUrl,
      'requiresShipping': instance.requiresShipping,
      'order': instance.order,
    };
