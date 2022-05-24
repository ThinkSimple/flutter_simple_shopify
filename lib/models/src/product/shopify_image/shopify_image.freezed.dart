// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shopify_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopifyImage _$ShopifyImageFromJson(Map<String, dynamic> json) {
  return _ShopifyImage.fromJson(json);
}

/// @nodoc
mixin _$ShopifyImage {
  String get originalSrc => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get altText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopifyImageCopyWith<ShopifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopifyImageCopyWith<$Res> {
  factory $ShopifyImageCopyWith(
          ShopifyImage value, $Res Function(ShopifyImage) then) =
      _$ShopifyImageCopyWithImpl<$Res>;
  $Res call({String originalSrc, String id, String? altText});
}

/// @nodoc
class _$ShopifyImageCopyWithImpl<$Res> implements $ShopifyImageCopyWith<$Res> {
  _$ShopifyImageCopyWithImpl(this._value, this._then);

  final ShopifyImage _value;
  // ignore: unused_field
  final $Res Function(ShopifyImage) _then;

  @override
  $Res call({
    Object? originalSrc = freezed,
    Object? id = freezed,
    Object? altText = freezed,
  }) {
    return _then(_value.copyWith(
      originalSrc: originalSrc == freezed
          ? _value.originalSrc
          : originalSrc // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ShopifyImageCopyWith<$Res>
    implements $ShopifyImageCopyWith<$Res> {
  factory _$$_ShopifyImageCopyWith(
          _$_ShopifyImage value, $Res Function(_$_ShopifyImage) then) =
      __$$_ShopifyImageCopyWithImpl<$Res>;
  @override
  $Res call({String originalSrc, String id, String? altText});
}

/// @nodoc
class __$$_ShopifyImageCopyWithImpl<$Res>
    extends _$ShopifyImageCopyWithImpl<$Res>
    implements _$$_ShopifyImageCopyWith<$Res> {
  __$$_ShopifyImageCopyWithImpl(
      _$_ShopifyImage _value, $Res Function(_$_ShopifyImage) _then)
      : super(_value, (v) => _then(v as _$_ShopifyImage));

  @override
  _$_ShopifyImage get _value => super._value as _$_ShopifyImage;

  @override
  $Res call({
    Object? originalSrc = freezed,
    Object? id = freezed,
    Object? altText = freezed,
  }) {
    return _then(_$_ShopifyImage(
      originalSrc: originalSrc == freezed
          ? _value.originalSrc
          : originalSrc // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopifyImage extends _ShopifyImage {
  _$_ShopifyImage({required this.originalSrc, required this.id, this.altText})
      : super._();

  factory _$_ShopifyImage.fromJson(Map<String, dynamic> json) =>
      _$$_ShopifyImageFromJson(json);

  @override
  final String originalSrc;
  @override
  final String id;
  @override
  final String? altText;

  @override
  String toString() {
    return 'ShopifyImage(originalSrc: $originalSrc, id: $id, altText: $altText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopifyImage &&
            const DeepCollectionEquality()
                .equals(other.originalSrc, originalSrc) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.altText, altText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(originalSrc),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(altText));

  @JsonKey(ignore: true)
  @override
  _$$_ShopifyImageCopyWith<_$_ShopifyImage> get copyWith =>
      __$$_ShopifyImageCopyWithImpl<_$_ShopifyImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopifyImageToJson(this);
  }
}

abstract class _ShopifyImage extends ShopifyImage {
  factory _ShopifyImage(
      {required final String originalSrc,
      required final String id,
      final String? altText}) = _$_ShopifyImage;
  _ShopifyImage._() : super._();

  factory _ShopifyImage.fromJson(Map<String, dynamic> json) =
      _$_ShopifyImage.fromJson;

  @override
  String get originalSrc => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get altText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopifyImageCopyWith<_$_ShopifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}
