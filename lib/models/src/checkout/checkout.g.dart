// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkout _$_$_CheckoutFromJson(Map<String, dynamic> json) {
  return _$_Checkout(
    id: json['id'] as String,
    availableShippingrates: json['availableShippingrates'] == null
        ? null
        : AvailableShippingRates.fromJson(
            json['availableShippingrates'] as Map<String, dynamic>),
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
    lineItems: JsonHelper.lineItems(json['lineItems']),
    appliedGiftcards: (json['appliedGiftcards'] as List<dynamic>?)
            ?.map((e) => AppliedGiftCards.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    order: json['order'] == null
        ? null
        : Order.fromJson(json['order'] as Map<String, dynamic>),
    orderStatusUrl: json['orderStatusUrl'] as String?,
    shippingAddress: json['shippingAddress'] == null
        ? null
        : MailingAddress.fromJson(
            json['shippingAddress'] as Map<String, dynamic>),
    shippingLine: json['shippingLine'] == null
        ? null
        : ShippingRates.fromJson(json['shippingLine'] as Map<String, dynamic>),
    email: json['email'] as String?,
    completedAt: json['completedAt'] as String?,
    note: json['note'] as String?,
    webUrl: json['webUrl'] as String?,
    updatedAt: json['updatedAt'] as String?,
  );
}

Map<String, dynamic> _$_$_CheckoutToJson(_$_Checkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'availableShippingrates': instance.availableShippingrates,
      'createdAt': instance.createdAt,
      'currencyCode': instance.currencyCode,
      'totalTaxV2': instance.totalTaxV2,
      'totalPriceV2': instance.totalPriceV2,
      'taxesIncluded': instance.taxesIncluded,
      'taxExempt': instance.taxExempt,
      'subtotalPriceV2': instance.subtotalPriceV2,
      'requiresShipping': instance.requiresShipping,
      'lineItems': instance.lineItems,
      'appliedGiftcards': instance.appliedGiftcards,
      'order': instance.order,
      'orderStatusUrl': instance.orderStatusUrl,
      'shippingAddress': instance.shippingAddress,
      'shippingLine': instance.shippingLine,
      'email': instance.email,
      'completedAt': instance.completedAt,
      'note': instance.note,
      'webUrl': instance.webUrl,
      'updatedAt': instance.updatedAt,
    };
