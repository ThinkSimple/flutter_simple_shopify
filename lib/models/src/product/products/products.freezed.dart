// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  List<Product> get productList => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res>;
  $Res call({List<Product> productList, bool hasNextPage});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res> implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  final Products _value;
  // ignore: unused_field
  final $Res Function(Products) _then;

  @override
  $Res call({
    Object? productList = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      productList: productList == freezed
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$$_ProductsCopyWith(
          _$_Products value, $Res Function(_$_Products) then) =
      __$$_ProductsCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> productList, bool hasNextPage});
}

/// @nodoc
class __$$_ProductsCopyWithImpl<$Res> extends _$ProductsCopyWithImpl<$Res>
    implements _$$_ProductsCopyWith<$Res> {
  __$$_ProductsCopyWithImpl(
      _$_Products _value, $Res Function(_$_Products) _then)
      : super(_value, (v) => _then(v as _$_Products));

  @override
  _$_Products get _value => super._value as _$_Products;

  @override
  $Res call({
    Object? productList = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_$_Products(
      productList: productList == freezed
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Products extends _Products {
  _$_Products(
      {required final List<Product> productList, required this.hasNextPage})
      : _productList = productList,
        super._();

  factory _$_Products.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsFromJson(json);

  final List<Product> _productList;
  @override
  List<Product> get productList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'Products(productList: $productList, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Products &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(hasNextPage));

  @JsonKey(ignore: true)
  @override
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      __$$_ProductsCopyWithImpl<_$_Products>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsToJson(this);
  }
}

abstract class _Products extends Products {
  factory _Products(
      {required final List<Product> productList,
      required final bool hasNextPage}) = _$_Products;
  _Products._() : super._();

  factory _Products.fromJson(Map<String, dynamic> json) = _$_Products.fromJson;

  @override
  List<Product> get productList => throw _privateConstructorUsedError;
  @override
  bool get hasNextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      throw _privateConstructorUsedError;
}
