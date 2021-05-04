// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mailing_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MailingAddress _$_$_MailingAddressFromJson(Map<String, dynamic> json) {
  return _$_MailingAddress(
    id: json['id'] as String,
    lastName: json['lastName'] as String,
    address1: json['address1'] as String,
    name: json['name'] as String,
    city: json['city'] as String,
    country: json['country'] as String,
    firstName: json['firstName'] as String,
    zip: json['zip'] as String,
    address2: json['address2'] as String?,
    company: json['company'] as String?,
    countryCodeV2: json['countryCodeV2'] as String?,
    formattedArea: json['formattedArea'] as String?,
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    phone: json['phone'] as String?,
    province: json['province'] as String?,
    provinceCode: json['provinceCode'] as String?,
  );
}

Map<String, dynamic> _$_$_MailingAddressToJson(_$_MailingAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastName': instance.lastName,
      'address1': instance.address1,
      'name': instance.name,
      'city': instance.city,
      'country': instance.country,
      'firstName': instance.firstName,
      'zip': instance.zip,
      'address2': instance.address2,
      'company': instance.company,
      'countryCodeV2': instance.countryCodeV2,
      'formattedArea': instance.formattedArea,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone': instance.phone,
      'province': instance.province,
      'provinceCode': instance.provinceCode,
    };
