// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      email: json['email'] as String?,
      name: json['name'] as String?,
      content: json['content'] as String?,
      contentHtml: json['contentHtml'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'content': instance.content,
      'contentHtml': instance.contentHtml,
      'id': instance.id,
    };
