// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Menu _$$_MenuFromJson(Map<String, dynamic> json) => _$_Menu(
      handle: json['handle'] as String?,
      id: json['id'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsCount: json['itemsCount'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_MenuToJson(_$_Menu instance) => <String, dynamic>{
      'handle': instance.handle,
      'id': instance.id,
      'items': instance.items,
      'itemsCount': instance.itemsCount,
      'title': instance.title,
    };
