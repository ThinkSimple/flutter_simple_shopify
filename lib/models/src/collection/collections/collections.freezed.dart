// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Collections _$CollectionsFromJson(Map<String, dynamic> json) {
  return _Collections.fromJson(json);
}

/// @nodoc
class _$CollectionsTearOff {
  const _$CollectionsTearOff();

  _Collections call(
      {required List<Collection> collectionList, required bool hasNextPage}) {
    return _Collections(
      collectionList: collectionList,
      hasNextPage: hasNextPage,
    );
  }

  Collections fromJson(Map<String, Object> json) {
    return Collections.fromJson(json);
  }
}

/// @nodoc
const $Collections = _$CollectionsTearOff();

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
abstract class _$CollectionsCopyWith<$Res>
    implements $CollectionsCopyWith<$Res> {
  factory _$CollectionsCopyWith(
          _Collections value, $Res Function(_Collections) then) =
      __$CollectionsCopyWithImpl<$Res>;
  @override
  $Res call({List<Collection> collectionList, bool hasNextPage});
}

/// @nodoc
class __$CollectionsCopyWithImpl<$Res> extends _$CollectionsCopyWithImpl<$Res>
    implements _$CollectionsCopyWith<$Res> {
  __$CollectionsCopyWithImpl(
      _Collections _value, $Res Function(_Collections) _then)
      : super(_value, (v) => _then(v as _Collections));

  @override
  _Collections get _value => super._value as _Collections;

  @override
  $Res call({
    Object? collectionList = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_Collections(
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
@JsonSerializable()
class _$_Collections implements _Collections {
  _$_Collections({required this.collectionList, required this.hasNextPage});

  factory _$_Collections.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionsFromJson(json);

  @override
  final List<Collection> collectionList;
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'Collections(collectionList: $collectionList, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Collections &&
            (identical(other.collectionList, collectionList) ||
                const DeepCollectionEquality()
                    .equals(other.collectionList, collectionList)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(collectionList) ^
      const DeepCollectionEquality().hash(hasNextPage);

  @JsonKey(ignore: true)
  @override
  _$CollectionsCopyWith<_Collections> get copyWith =>
      __$CollectionsCopyWithImpl<_Collections>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionsToJson(this);
  }
}

abstract class _Collections implements Collections {
  factory _Collections(
      {required List<Collection> collectionList,
      required bool hasNextPage}) = _$_Collections;

  factory _Collections.fromJson(Map<String, dynamic> json) =
      _$_Collections.fromJson;

  @override
  List<Collection> get collectionList => throw _privateConstructorUsedError;
  @override
  bool get hasNextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CollectionsCopyWith<_Collections> get copyWith =>
      throw _privateConstructorUsedError;
}
