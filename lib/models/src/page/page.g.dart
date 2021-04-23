// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Page _$_$_PageFromJson(Map<String, dynamic> json) {
  return _$_Page(
    body: json['body'] as String?,
    bodySummary: json['bodySummary'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    handle: json['handle'] as String?,
    id: json['id'] as String?,
    title: json['title'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$_$_PageToJson(_$_Page instance) => <String, dynamic>{
      'body': instance.body,
      'bodySummary': instance.bodySummary,
      'createdAt': instance.createdAt?.toIso8601String(),
      'handle': instance.handle,
      'id': instance.id,
      'title': instance.title,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
    };
