// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pages _$$_PagesFromJson(Map<String, dynamic> json) => _$_Pages(
      pageList: (json['pageList'] as List<dynamic>)
          .map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PagesToJson(_$_Pages instance) => <String, dynamic>{
      'pageList': instance.pageList,
    };
