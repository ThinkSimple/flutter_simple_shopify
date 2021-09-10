// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopify_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopifyUser _$$_ShopifyUserFromJson(Map<String, dynamic> json) =>
    _$_ShopifyUser(
      address: json['address'] == null
          ? null
          : Addresses.fromJson(json['address'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      id: json['id'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lastIncompleteCheckout: json['lastIncompleteCheckout'] == null
          ? null
          : LastIncompleteCheckout.fromJson(
              json['lastIncompleteCheckout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopifyUserToJson(_$_ShopifyUser instance) =>
    <String, dynamic>{
      'address': instance.address,
      'createdAt': instance.createdAt,
      'displayName': instance.displayName,
      'email': instance.email,
      'firstName': instance.firstName,
      'id': instance.id,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'tags': instance.tags,
      'lastIncompleteCheckout': instance.lastIncompleteCheckout,
    };
