// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressDetails _$$_AddressDetailsFromJson(Map<String, dynamic> json) =>
    _$_AddressDetails(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      company: json['company'] as String?,
      completionService: json['completionService'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      province: json['province'] as String?,
      provinceCode: json['provinceCode'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$$_AddressDetailsToJson(_$_AddressDetails instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'company': instance.company,
      'completionService': instance.completionService,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'province': instance.province,
      'provinceCode': instance.provinceCode,
      'zip': instance.zip,
    };
