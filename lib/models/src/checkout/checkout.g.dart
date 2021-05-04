// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Checkout _$_$_CheckoutFromJson(Map<String, dynamic> json) {
  return _$_Checkout(
    id: json['id'] as String,
    email: json['email'] as String,
    availableShippingrates: json['availableShippingrates'] == null
        ? null
        : AvailableShippingRates.fromJson(
            json['availableShippingrates'] as Map<String, dynamic>),
    shippingLine:
        ShippingRates.fromJson(json['shippingLine'] as Map<String, dynamic>),
    shippingAddress: MailingAddress.fromJson(
        json['shippingAddress'] as Map<String, dynamic>),
    createdAt: json['createdAt'] as String,
    currencyCode: json['currencyCode'] as String,
    lineItems: LineItems.fromJson(json['lineItems'] as Map<String, dynamic>),
    totalTaxV2: PriceV2.fromJson(json['totalTaxV2'] as Map<String, dynamic>),
    totalPriceV2:
        PriceV2.fromJson(json['totalPriceV2'] as Map<String, dynamic>),
    taxesIncluded: json['taxesIncluded'] as bool,
    taxExempt: json['taxExempt'] as bool,
    subtotalPriceV2:
        PriceV2.fromJson(json['subtotalPriceV2'] as Map<String, dynamic>),
    orderStatusUrl: json['orderStatusUrl'] as String,
    requiresShipping: json['requiresShipping'] as bool,
    order: Order.fromJson(json['order'] as Map<String, dynamic>),
    appliedGiftcards: (json['appliedGiftcards'] as List<dynamic>?)
            ?.map((e) => AppliedGiftCards.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    completedAt: json['completedAt'] as String?,
    note: json['note'] as String?,
    webUrl: json['webUrl'] as String?,
    updatedAt: json['updatedAt'] as String?,
  );
}

Map<String, dynamic> _$_$_CheckoutToJson(_$_Checkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'availableShippingrates': instance.availableShippingrates,
      'shippingLine': instance.shippingLine,
      'shippingAddress': instance.shippingAddress,
      'createdAt': instance.createdAt,
      'currencyCode': instance.currencyCode,
      'lineItems': instance.lineItems,
      'totalTaxV2': instance.totalTaxV2,
      'totalPriceV2': instance.totalPriceV2,
      'taxesIncluded': instance.taxesIncluded,
      'taxExempt': instance.taxExempt,
      'subtotalPriceV2': instance.subtotalPriceV2,
      'orderStatusUrl': instance.orderStatusUrl,
      'requiresShipping': instance.requiresShipping,
      'order': instance.order,
      'appliedGiftcards': instance.appliedGiftcards,
      'completedAt': instance.completedAt,
      'note': instance.note,
      'webUrl': instance.webUrl,
      'updatedAt': instance.updatedAt,
    };
