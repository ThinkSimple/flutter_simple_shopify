// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuItem _$$_MenuItemFromJson(Map<String, dynamic> json) => _$_MenuItem(
      id: json['id'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceId: json['resourceId'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      title: json['title'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_MenuItemToJson(_$_MenuItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'resourceId': instance.resourceId,
      'tags': instance.tags,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };
