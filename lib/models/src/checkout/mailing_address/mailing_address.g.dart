// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mailing_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MailingAddress _$_$_MailingAddressFromJson(Map<String, dynamic> json) {
  return _$_MailingAddress(
    address1: json['address1'] as String?,
    address2: json['address2'] as String?,
    city: json['city'] as String?,
    company: json['company'] as String?,
    country: json['country'] as String?,
    countryCodeV2: json['countryCodeV2'] as String?,
    firstName: json['firstName'] as String?,
    formattedArea: json['formattedArea'] as String?,
    id: json['id'] as String?,
    lastName: json['lastName'] as String?,
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    name: json['name'] as String?,
    phone: json['phone'] as String?,
    province: json['province'] as String?,
    provinceCode: json['provinceCode'] as String?,
    zip: json['zip'] as String?,
  );
}

Map<String, dynamic> _$_$_MailingAddressToJson(_$_MailingAddress instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'company': instance.company,
      'country': instance.country,
      'countryCodeV2': instance.countryCodeV2,
      'firstName': instance.firstName,
      'formattedArea': instance.formattedArea,
      'id': instance.id,
      'lastName': instance.lastName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
      'phone': instance.phone,
      'province': instance.province,
      'provinceCode': instance.provinceCode,
      'zip': instance.zip,
    };
