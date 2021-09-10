// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as String,
      email: json['email'] as String,
      currencyCode: json['currencyCode'] as String,
      customerUrl: json['customerUrl'] as String,
      lineItems:
          LineItemsOrder.fromJson(json['lineItems'] as Map<String, dynamic>),
      name: json['name'] as String,
      orderNumber: json['orderNumber'] as int,
      processedAt: json['processedAt'] as String,
      shippingAddress: ShippingAddress.fromJson(
          json['shippingAddress'] as Map<String, dynamic>),
      statusUrl: json['statusUrl'] as String,
      subtotalPriceV2:
          PriceV2.fromJson(json['subtotalPriceV2'] as Map<String, dynamic>),
      totalPriceV2:
          PriceV2.fromJson(json['totalPriceV2'] as Map<String, dynamic>),
      totalShippingPriceV2: PriceV2.fromJson(
          json['totalShippingPriceV2'] as Map<String, dynamic>),
      totalTaxV2: PriceV2.fromJson(json['totalTaxV2'] as Map<String, dynamic>),
      totalRefundedV2: json['totalRefundedV2'] == null
          ? null
          : PriceV2.fromJson(json['totalRefundedV2'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'currencyCode': instance.currencyCode,
      'customerUrl': instance.customerUrl,
      'lineItems': instance.lineItems,
      'name': instance.name,
      'orderNumber': instance.orderNumber,
      'processedAt': instance.processedAt,
      'shippingAddress': instance.shippingAddress,
      'statusUrl': instance.statusUrl,
      'subtotalPriceV2': instance.subtotalPriceV2,
      'totalPriceV2': instance.totalPriceV2,
      'totalShippingPriceV2': instance.totalShippingPriceV2,
      'totalTaxV2': instance.totalTaxV2,
      'totalRefundedV2': instance.totalRefundedV2,
      'phone': instance.phone,
      'cursor': instance.cursor,
    };
