// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssociatedCollections _$$_AssociatedCollectionsFromJson(
        Map<String, dynamic> json) =>
    _$_AssociatedCollections(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      updatedAt: json['updatedAt'] as String,
      descriptionHtml: json['descriptionHtml'] as String?,
      handle: json['handle'] as String?,
    );

Map<String, dynamic> _$$_AssociatedCollectionsToJson(
        _$_AssociatedCollections instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'updatedAt': instance.updatedAt,
      'descriptionHtml': instance.descriptionHtml,
      'handle': instance.handle,
    };
