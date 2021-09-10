// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'associated_collections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssociatedCollections _$AssociatedCollectionsFromJson(
    Map<String, dynamic> json) {
  return _AssociatedCollections.fromJson(json);
}

/// @nodoc
class _$AssociatedCollectionsTearOff {
  const _$AssociatedCollectionsTearOff();

  _AssociatedCollections call(
      {required String id,
      required String title,
      required String description,
      required String updatedAt,
      String? descriptionHtml,
      String? handle}) {
    return _AssociatedCollections(
      id: id,
      title: title,
      description: description,
      updatedAt: updatedAt,
      descriptionHtml: descriptionHtml,
      handle: handle,
    );
  }

  AssociatedCollections fromJson(Map<String, Object> json) {
    return AssociatedCollections.fromJson(json);
  }
}

/// @nodoc
const $AssociatedCollections = _$AssociatedCollectionsTearOff();

/// @nodoc
mixin _$AssociatedCollections {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get descriptionHtml => throw _privateConstructorUsedError;
  String? get handle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssociatedCollectionsCopyWith<AssociatedCollections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociatedCollectionsCopyWith<$Res> {
  factory $AssociatedCollectionsCopyWith(AssociatedCollections value,
          $Res Function(AssociatedCollections) then) =
      _$AssociatedCollectionsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      String updatedAt,
      String? descriptionHtml,
      String? handle});
}

/// @nodoc
class _$AssociatedCollectionsCopyWithImpl<$Res>
    implements $AssociatedCollectionsCopyWith<$Res> {
  _$AssociatedCollectionsCopyWithImpl(this._value, this._then);

  final AssociatedCollections _value;
  // ignore: unused_field
  final $Res Function(AssociatedCollections) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? descriptionHtml = freezed,
    Object? handle = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionHtml: descriptionHtml == freezed
          ? _value.descriptionHtml
          : descriptionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AssociatedCollectionsCopyWith<$Res>
    implements $AssociatedCollectionsCopyWith<$Res> {
  factory _$AssociatedCollectionsCopyWith(_AssociatedCollections value,
          $Res Function(_AssociatedCollections) then) =
      __$AssociatedCollectionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      String updatedAt,
      String? descriptionHtml,
      String? handle});
}

/// @nodoc
class __$AssociatedCollectionsCopyWithImpl<$Res>
    extends _$AssociatedCollectionsCopyWithImpl<$Res>
    implements _$AssociatedCollectionsCopyWith<$Res> {
  __$AssociatedCollectionsCopyWithImpl(_AssociatedCollections _value,
      $Res Function(_AssociatedCollections) _then)
      : super(_value, (v) => _then(v as _AssociatedCollections));

  @override
  _AssociatedCollections get _value => super._value as _AssociatedCollections;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? descriptionHtml = freezed,
    Object? handle = freezed,
  }) {
    return _then(_AssociatedCollections(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionHtml: descriptionHtml == freezed
          ? _value.descriptionHtml
          : descriptionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssociatedCollections extends _AssociatedCollections {
  _$_AssociatedCollections(
      {required this.id,
      required this.title,
      required this.description,
      required this.updatedAt,
      this.descriptionHtml,
      this.handle})
      : super._();

  factory _$_AssociatedCollections.fromJson(Map<String, dynamic> json) =>
      _$$_AssociatedCollectionsFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String updatedAt;
  @override
  final String? descriptionHtml;
  @override
  final String? handle;

  @override
  String toString() {
    return 'AssociatedCollections(id: $id, title: $title, description: $description, updatedAt: $updatedAt, descriptionHtml: $descriptionHtml, handle: $handle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssociatedCollections &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.descriptionHtml, descriptionHtml) ||
                const DeepCollectionEquality()
                    .equals(other.descriptionHtml, descriptionHtml)) &&
            (identical(other.handle, handle) ||
                const DeepCollectionEquality().equals(other.handle, handle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(descriptionHtml) ^
      const DeepCollectionEquality().hash(handle);

  @JsonKey(ignore: true)
  @override
  _$AssociatedCollectionsCopyWith<_AssociatedCollections> get copyWith =>
      __$AssociatedCollectionsCopyWithImpl<_AssociatedCollections>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssociatedCollectionsToJson(this);
  }
}

abstract class _AssociatedCollections extends AssociatedCollections {
  factory _AssociatedCollections(
      {required String id,
      required String title,
      required String description,
      required String updatedAt,
      String? descriptionHtml,
      String? handle}) = _$_AssociatedCollections;
  _AssociatedCollections._() : super._();

  factory _AssociatedCollections.fromJson(Map<String, dynamic> json) =
      _$_AssociatedCollections.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  String? get descriptionHtml => throw _privateConstructorUsedError;
  @override
  String? get handle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssociatedCollectionsCopyWith<_AssociatedCollections> get copyWith =>
      throw _privateConstructorUsedError;
}
