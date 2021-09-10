// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collections _$$_CollectionsFromJson(Map<String, dynamic> json) =>
    _$_Collections(
      collectionList: (json['collectionList'] as List<dynamic>)
          .map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNextPage: json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$$_CollectionsToJson(_$_Collections instance) =>
    <String, dynamic>{
      'collectionList': instance.collectionList,
      'hasNextPage': instance.hasNextPage,
    };
