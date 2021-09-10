// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Articles _$ArticlesFromJson(Map<String, dynamic> json) {
  return _Articles.fromJson(json);
}

/// @nodoc
class _$ArticlesTearOff {
  const _$ArticlesTearOff();

  _Articles call({required List<Article> articleList}) {
    return _Articles(
      articleList: articleList,
    );
  }

  Articles fromJson(Map<String, Object> json) {
    return Articles.fromJson(json);
  }
}

/// @nodoc
const $Articles = _$ArticlesTearOff();

/// @nodoc
mixin _$Articles {
  List<Article> get articleList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesCopyWith<Articles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesCopyWith<$Res> {
  factory $ArticlesCopyWith(Articles value, $Res Function(Articles) then) =
      _$ArticlesCopyWithImpl<$Res>;
  $Res call({List<Article> articleList});
}

/// @nodoc
class _$ArticlesCopyWithImpl<$Res> implements $ArticlesCopyWith<$Res> {
  _$ArticlesCopyWithImpl(this._value, this._then);

  final Articles _value;
  // ignore: unused_field
  final $Res Function(Articles) _then;

  @override
  $Res call({
    Object? articleList = freezed,
  }) {
    return _then(_value.copyWith(
      articleList: articleList == freezed
          ? _value.articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
abstract class _$ArticlesCopyWith<$Res> implements $ArticlesCopyWith<$Res> {
  factory _$ArticlesCopyWith(_Articles value, $Res Function(_Articles) then) =
      __$ArticlesCopyWithImpl<$Res>;
  @override
  $Res call({List<Article> articleList});
}

/// @nodoc
class __$ArticlesCopyWithImpl<$Res> extends _$ArticlesCopyWithImpl<$Res>
    implements _$ArticlesCopyWith<$Res> {
  __$ArticlesCopyWithImpl(_Articles _value, $Res Function(_Articles) _then)
      : super(_value, (v) => _then(v as _Articles));

  @override
  _Articles get _value => super._value as _Articles;

  @override
  $Res call({
    Object? articleList = freezed,
  }) {
    return _then(_Articles(
      articleList: articleList == freezed
          ? _value.articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Articles implements _Articles {
  _$_Articles({required this.articleList});

  factory _$_Articles.fromJson(Map<String, dynamic> json) =>
      _$$_ArticlesFromJson(json);

  @override
  final List<Article> articleList;

  @override
  String toString() {
    return 'Articles(articleList: $articleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Articles &&
            (identical(other.articleList, articleList) ||
                const DeepCollectionEquality()
                    .equals(other.articleList, articleList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(articleList);

  @JsonKey(ignore: true)
  @override
  _$ArticlesCopyWith<_Articles> get copyWith =>
      __$ArticlesCopyWithImpl<_Articles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticlesToJson(this);
  }
}

abstract class _Articles implements Articles {
  factory _Articles({required List<Article> articleList}) = _$_Articles;

  factory _Articles.fromJson(Map<String, dynamic> json) = _$_Articles.fromJson;

  @override
  List<Article> get articleList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticlesCopyWith<_Articles> get copyWith =>
      throw _privateConstructorUsedError;
}
