// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Collections _$CollectionsFromJson(Map<String, dynamic> json) {
  return _Collections.fromJson(json);
}

/// @nodoc
mixin _$Collections {
  List<Collection> get collectionList => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionsCopyWith<Collections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionsCopyWith<$Res> {
  factory $CollectionsCopyWith(
          Collections value, $Res Function(Collections) then) =
      _$CollectionsCopyWithImpl<$Res>;
  $Res call({List<Collection> collectionList, bool hasNextPage});
}

/// @nodoc
class _$CollectionsCopyWithImpl<$Res> implements $CollectionsCopyWith<$Res> {
  _$CollectionsCopyWithImpl(this._value, this._then);

  final Collections _value;
  // ignore: unused_field
  final $Res Function(Collections) _then;

  @override
  $Res call({
    Object? collectionList = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      collectionList: collectionList == freezed
          ? _value.collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CollectionsCopyWith<$Res>
    implements $CollectionsCopyWith<$Res> {
  factory _$$_CollectionsCopyWith(
          _$_Collections value, $Res Function(_$_Collections) then) =
      __$$_CollectionsCopyWithImpl<$Res>;
  @override
  $Res call({List<Collection> collectionList, bool hasNextPage});
}

/// @nodoc
class __$$_CollectionsCopyWithImpl<$Res> extends _$CollectionsCopyWithImpl<$Res>
    implements _$$_CollectionsCopyWith<$Res> {
  __$$_CollectionsCopyWithImpl(
      _$_Collections _value, $Res Function(_$_Collections) _then)
      : super(_value, (v) => _then(v as _$_Collections));

  @override
  _$_Collections get _value => super._value as _$_Collections;

  @override
  $Res call({
    Object? collectionList = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_$_Collections(
      collectionList: collectionList == freezed
          ? _value._collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Collections implements _Collections {
  _$_Collections(
      {required final List<Collection> collectionList,
      required this.hasNextPage})
      : _collectionList = collectionList;

  factory _$_Collections.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionsFromJson(json);

  final List<Collection> _collectionList;
  @override
  List<Collection> get collectionList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectionList);
  }

  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'Collections(collectionList: $collectionList, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Collections &&
            const DeepCollectionEquality()
                .equals(other._collectionList, _collectionList) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_collectionList),
      const DeepCollectionEquality().hash(hasNextPage));

  @JsonKey(ignore: true)
  @override
  _$$_CollectionsCopyWith<_$_Collections> get copyWith =>
      __$$_CollectionsCopyWithImpl<_$_Collections>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionsToJson(this);
  }
}

abstract class _Collections implements Collections {
  factory _Collections(
      {required final List<Collection> collectionList,
      required final bool hasNextPage}) = _$_Collections;

  factory _Collections.fromJson(Map<String, dynamic> json) =
      _$_Collections.fromJson;

  @override
  List<Collection> get collectionList => throw _privateConstructorUsedError;
  @override
  bool get hasNextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionsCopyWith<_$_Collections> get copyWith =>
      throw _privateConstructorUsedError;
}
