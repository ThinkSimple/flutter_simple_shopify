// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$_$_OrderFromJson(Map<String, dynamic> json) {
  return _$_Order(
    id: json['id'] as String?,
    email: json['email'] as String?,
    currencyCode: json['currencyCode'] as String?,
    customerUrl: json['customerUrl'] as String?,
    lineItems: json['lineItems'] == null
        ? null
        : LineItemsOrder.fromJson(json['lineItems'] as Map<String, dynamic>),
    name: json['name'] as String?,
    orderNumber: json['orderNumber'] as int?,
    phone: json['phone'] as String?,
    processedAt: json['processedAt'] as String?,
    shippingAddress: json['shippingAddress'] == null
        ? null
        : ShippingAddress.fromJson(
            json['shippingAddress'] as Map<String, dynamic>),
    statusUrl: json['statusUrl'] as String?,
    subtotalPriceV2: json['subtotalPriceV2'] == null
        ? null
        : PriceV2.fromJson(json['subtotalPriceV2'] as Map<String, dynamic>),
    totalPriceV2: json['totalPriceV2'] == null
        ? null
        : PriceV2.fromJson(json['totalPriceV2'] as Map<String, dynamic>),
    totalRefundedV2: json['totalRefundedV2'] == null
        ? null
        : PriceV2.fromJson(json['totalRefundedV2'] as Map<String, dynamic>),
    totalShippingPriceV2: json['totalShippingPriceV2'] == null
        ? null
        : PriceV2.fromJson(
            json['totalShippingPriceV2'] as Map<String, dynamic>),
    totalTaxV2: json['totalTaxV2'] == null
        ? null
        : PriceV2.fromJson(json['totalTaxV2'] as Map<String, dynamic>),
    cursor: json['cursor'] as String?,
  );
}

Map<String, dynamic> _$_$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'currencyCode': instance.currencyCode,
      'customerUrl': instance.customerUrl,
      'lineItems': instance.lineItems,
      'name': instance.name,
      'orderNumber': instance.orderNumber,
      'phone': instance.phone,
      'processedAt': instance.processedAt,
      'shippingAddress': instance.shippingAddress,
      'statusUrl': instance.statusUrl,
      'subtotalPriceV2': instance.subtotalPriceV2,
      'totalPriceV2': instance.totalPriceV2,
      'totalRefundedV2': instance.totalRefundedV2,
      'totalShippingPriceV2': instance.totalShippingPriceV2,
      'totalTaxV2': instance.totalTaxV2,
      'cursor': instance.cursor,
    };
