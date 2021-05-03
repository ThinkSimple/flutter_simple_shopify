// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopify_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopifyImage _$ShopifyImageFromJson(Map<String, dynamic> json) {
  return _ShopifyImage.fromJson(json);
}

/// @nodoc
class _$ShopifyImageTearOff {
  const _$ShopifyImageTearOff();

  _ShopifyImage call({String? altText, String? originalSrc, String? id}) {
    return _ShopifyImage(
      altText: altText,
      originalSrc: originalSrc,
      id: id,
    );
  }

  ShopifyImage fromJson(Map<String, Object> json) {
    return ShopifyImage.fromJson(json);
  }
}

/// @nodoc
const $ShopifyImage = _$ShopifyImageTearOff();

/// @nodoc
mixin _$ShopifyImage {
  String? get altText => throw _privateConstructorUsedError;
  String? get originalSrc => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

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
  $Res call({String? altText, String? originalSrc, String? id});
}

/// @nodoc
class _$ShopifyImageCopyWithImpl<$Res> implements $ShopifyImageCopyWith<$Res> {
  _$ShopifyImageCopyWithImpl(this._value, this._then);

  final ShopifyImage _value;
  // ignore: unused_field
  final $Res Function(ShopifyImage) _then;

  @override
  $Res call({
    Object? altText = freezed,
    Object? originalSrc = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
      originalSrc: originalSrc == freezed
          ? _value.originalSrc
          : originalSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShopifyImageCopyWith<$Res>
    implements $ShopifyImageCopyWith<$Res> {
  factory _$ShopifyImageCopyWith(
          _ShopifyImage value, $Res Function(_ShopifyImage) then) =
      __$ShopifyImageCopyWithImpl<$Res>;
  @override
  $Res call({String? altText, String? originalSrc, String? id});
}

/// @nodoc
class __$ShopifyImageCopyWithImpl<$Res> extends _$ShopifyImageCopyWithImpl<$Res>
    implements _$ShopifyImageCopyWith<$Res> {
  __$ShopifyImageCopyWithImpl(
      _ShopifyImage _value, $Res Function(_ShopifyImage) _then)
      : super(_value, (v) => _then(v as _ShopifyImage));

  @override
  _ShopifyImage get _value => super._value as _ShopifyImage;

  @override
  $Res call({
    Object? altText = freezed,
    Object? originalSrc = freezed,
    Object? id = freezed,
  }) {
    return _then(_ShopifyImage(
      altText: altText == freezed
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
      originalSrc: originalSrc == freezed
          ? _value.originalSrc
          : originalSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopifyImage extends _ShopifyImage {
  _$_ShopifyImage({this.altText, this.originalSrc, this.id}) : super._();

  factory _$_ShopifyImage.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopifyImageFromJson(json);

  @override
  final String? altText;
  @override
  final String? originalSrc;
  @override
  final String? id;

  @override
  String toString() {
    return 'ShopifyImage(altText: $altText, originalSrc: $originalSrc, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopifyImage &&
            (identical(other.altText, altText) ||
                const DeepCollectionEquality()
                    .equals(other.altText, altText)) &&
            (identical(other.originalSrc, originalSrc) ||
                const DeepCollectionEquality()
                    .equals(other.originalSrc, originalSrc)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(altText) ^
      const DeepCollectionEquality().hash(originalSrc) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ShopifyImageCopyWith<_ShopifyImage> get copyWith =>
      __$ShopifyImageCopyWithImpl<_ShopifyImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopifyImageToJson(this);
  }
}

abstract class _ShopifyImage extends ShopifyImage {
  factory _ShopifyImage({String? altText, String? originalSrc, String? id}) =
      _$_ShopifyImage;
  _ShopifyImage._() : super._();

  factory _ShopifyImage.fromJson(Map<String, dynamic> json) =
      _$_ShopifyImage.fromJson;

  @override
  String? get altText => throw _privateConstructorUsedError;
  @override
  String? get originalSrc => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopifyImageCopyWith<_ShopifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}
