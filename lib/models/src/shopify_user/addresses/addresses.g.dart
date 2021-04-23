// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Addresses _$_$_AddressesFromJson(Map<String, dynamic> json) {
  return _$_Addresses(
    addressList: (json['addressList'] as List<dynamic>)
        .map((e) => Address.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AddressesToJson(_$_Addresses instance) =>
    <String, dynamic>{
      'addressList': instance.addressList,
    };
