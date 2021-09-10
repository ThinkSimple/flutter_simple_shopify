// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingAddress _$$_ShippingAddressFromJson(Map<String, dynamic> json) =>
    _$_ShippingAddress(
      name: json['name'] as String,
      firstName: json['firstName'] as String,
      id: json['id'] as String,
      lastName: json['lastName'] as String,
      address1: json['address1'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      address2: json['address2'] as String?,
      company: json['company'] as String?,
      countryCodeV2: json['countryCodeV2'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      phone: json['phone'] as String?,
      province: json['province'] as String?,
      provinceCode: json['provinceCode'] as String?,
      zip: json['zip'] as String,
    );

Map<String, dynamic> _$$_ShippingAddressToJson(_$_ShippingAddress instance) =>
    <String, dynamic>{
      'name': instance.name,
      'firstName': instance.firstName,
      'id': instance.id,
      'lastName': instance.lastName,
      'address1': instance.address1,
      'city': instance.city,
      'country': instance.country,
      'address2': instance.address2,
      'company': instance.company,
      'countryCodeV2': instance.countryCodeV2,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone': instance.phone,
      'province': instance.province,
      'provinceCode': instance.provinceCode,
      'zip': instance.zip,
    };
