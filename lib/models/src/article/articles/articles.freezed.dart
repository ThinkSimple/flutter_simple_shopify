// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Articles _$ArticlesFromJson(Map<String, dynamic> json) {
  return _Articles.fromJson(json);
}

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
abstract class _$$_ArticlesCopyWith<$Res> implements $ArticlesCopyWith<$Res> {
  factory _$$_ArticlesCopyWith(
          _$_Articles value, $Res Function(_$_Articles) then) =
      __$$_ArticlesCopyWithImpl<$Res>;
  @override
  $Res call({List<Article> articleList});
}

/// @nodoc
class __$$_ArticlesCopyWithImpl<$Res> extends _$ArticlesCopyWithImpl<$Res>
    implements _$$_ArticlesCopyWith<$Res> {
  __$$_ArticlesCopyWithImpl(
      _$_Articles _value, $Res Function(_$_Articles) _then)
      : super(_value, (v) => _then(v as _$_Articles));

  @override
  _$_Articles get _value => super._value as _$_Articles;

  @override
  $Res call({
    Object? articleList = freezed,
  }) {
    return _then(_$_Articles(
      articleList: articleList == freezed
          ? _value._articleList
          : articleList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Articles implements _Articles {
  _$_Articles({required final List<Article> articleList})
      : _articleList = articleList;

  factory _$_Articles.fromJson(Map<String, dynamic> json) =>
      _$$_ArticlesFromJson(json);

  final List<Article> _articleList;
  @override
  List<Article> get articleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articleList);
  }

  @override
  String toString() {
    return 'Articles(articleList: $articleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Articles &&
            const DeepCollectionEquality()
                .equals(other._articleList, _articleList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_articleList));

  @JsonKey(ignore: true)
  @override
  _$$_ArticlesCopyWith<_$_Articles> get copyWith =>
      __$$_ArticlesCopyWithImpl<_$_Articles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticlesToJson(this);
  }
}

abstract class _Articles implements Articles {
  factory _Articles({required final List<Article> articleList}) = _$_Articles;

  factory _Articles.fromJson(Map<String, dynamic> json) = _$_Articles.fromJson;

  @override
  List<Article> get articleList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ArticlesCopyWith<_$_Articles> get copyWith =>
      throw _privateConstructorUsedError;
}
