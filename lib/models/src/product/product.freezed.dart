// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required String title,
      required String id,
      required bool availableForSale,
      required String createdAt,
      required List<ProductVariant> productVariants,
      required String productType,
      required String publishedAt,
      required List<String> tags,
      required String updatedAt,
      required List<ShopifyImage> images,
      required List<Option> option,
      required String vendor,
      required List<Metafield> metafields,
      List<AssociatedCollections>? collectionList,
      String? cursor,
      String? onlineStoreUrl,
      String? description,
      String? descriptionHtml,
      String? handle}) {
    return _Product(
      title: title,
      id: id,
      availableForSale: availableForSale,
      createdAt: createdAt,
      productVariants: productVariants,
      productType: productType,
      publishedAt: publishedAt,
      tags: tags,
      updatedAt: updatedAt,
      images: images,
      option: option,
      vendor: vendor,
      metafields: metafields,
      collectionList: collectionList,
      cursor: cursor,
      onlineStoreUrl: onlineStoreUrl,
      description: description,
      descriptionHtml: descriptionHtml,
      handle: handle,
    );
  }

  Product fromJson(Map<String, Object> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool get availableForSale => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  List<ProductVariant> get productVariants =>
      throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<ShopifyImage> get images => throw _privateConstructorUsedError;
  List<Option> get option => throw _privateConstructorUsedError;
  String get vendor => throw _privateConstructorUsedError;
  List<Metafield> get metafields => throw _privateConstructorUsedError;
  List<AssociatedCollections>? get collectionList =>
      throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  String? get onlineStoreUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get descriptionHtml => throw _privateConstructorUsedError;
  String? get handle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String id,
      bool availableForSale,
      String createdAt,
      List<ProductVariant> productVariants,
      String productType,
      String publishedAt,
      List<String> tags,
      String updatedAt,
      List<ShopifyImage> images,
      List<Option> option,
      String vendor,
      List<Metafield> metafields,
      List<AssociatedCollections>? collectionList,
      String? cursor,
      String? onlineStoreUrl,
      String? description,
      String? descriptionHtml,
      String? handle});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? availableForSale = freezed,
    Object? createdAt = freezed,
    Object? productVariants = freezed,
    Object? productType = freezed,
    Object? publishedAt = freezed,
    Object? tags = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
    Object? option = freezed,
    Object? vendor = freezed,
    Object? metafields = freezed,
    Object? collectionList = freezed,
    Object? cursor = freezed,
    Object? onlineStoreUrl = freezed,
    Object? description = freezed,
    Object? descriptionHtml = freezed,
    Object? handle = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      availableForSale: availableForSale == freezed
          ? _value.availableForSale
          : availableForSale // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      productVariants: productVariants == freezed
          ? _value.productVariants
          : productVariants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariant>,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ShopifyImage>,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
      metafields: metafields == freezed
          ? _value.metafields
          : metafields // ignore: cast_nullable_to_non_nullable
              as List<Metafield>,
      collectionList: collectionList == freezed
          ? _value.collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<AssociatedCollections>?,
      cursor: cursor == freezed
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStoreUrl: onlineStoreUrl == freezed
          ? _value.onlineStoreUrl
          : onlineStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String id,
      bool availableForSale,
      String createdAt,
      List<ProductVariant> productVariants,
      String productType,
      String publishedAt,
      List<String> tags,
      String updatedAt,
      List<ShopifyImage> images,
      List<Option> option,
      String vendor,
      List<Metafield> metafields,
      List<AssociatedCollections>? collectionList,
      String? cursor,
      String? onlineStoreUrl,
      String? description,
      String? descriptionHtml,
      String? handle});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? availableForSale = freezed,
    Object? createdAt = freezed,
    Object? productVariants = freezed,
    Object? productType = freezed,
    Object? publishedAt = freezed,
    Object? tags = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
    Object? option = freezed,
    Object? vendor = freezed,
    Object? metafields = freezed,
    Object? collectionList = freezed,
    Object? cursor = freezed,
    Object? onlineStoreUrl = freezed,
    Object? description = freezed,
    Object? descriptionHtml = freezed,
    Object? handle = freezed,
  }) {
    return _then(_Product(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      availableForSale: availableForSale == freezed
          ? _value.availableForSale
          : availableForSale // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      productVariants: productVariants == freezed
          ? _value.productVariants
          : productVariants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariant>,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ShopifyImage>,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
      metafields: metafields == freezed
          ? _value.metafields
          : metafields // ignore: cast_nullable_to_non_nullable
              as List<Metafield>,
      collectionList: collectionList == freezed
          ? _value.collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<AssociatedCollections>?,
      cursor: cursor == freezed
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineStoreUrl: onlineStoreUrl == freezed
          ? _value.onlineStoreUrl
          : onlineStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Product extends _Product {
  _$_Product(
      {required this.title,
      required this.id,
      required this.availableForSale,
      required this.createdAt,
      required this.productVariants,
      required this.productType,
      required this.publishedAt,
      required this.tags,
      required this.updatedAt,
      required this.images,
      required this.option,
      required this.vendor,
      required this.metafields,
      this.collectionList,
      this.cursor,
      this.onlineStoreUrl,
      this.description,
      this.descriptionHtml,
      this.handle})
      : super._();

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String title;
  @override
  final String id;
  @override
  final bool availableForSale;
  @override
  final String createdAt;
  @override
  final List<ProductVariant> productVariants;
  @override
  final String productType;
  @override
  final String publishedAt;
  @override
  final List<String> tags;
  @override
  final String updatedAt;
  @override
  final List<ShopifyImage> images;
  @override
  final List<Option> option;
  @override
  final String vendor;
  @override
  final List<Metafield> metafields;
  @override
  final List<AssociatedCollections>? collectionList;
  @override
  final String? cursor;
  @override
  final String? onlineStoreUrl;
  @override
  final String? description;
  @override
  final String? descriptionHtml;
  @override
  final String? handle;

  @override
  String toString() {
    return 'Product(title: $title, id: $id, availableForSale: $availableForSale, createdAt: $createdAt, productVariants: $productVariants, productType: $productType, publishedAt: $publishedAt, tags: $tags, updatedAt: $updatedAt, images: $images, option: $option, vendor: $vendor, metafields: $metafields, collectionList: $collectionList, cursor: $cursor, onlineStoreUrl: $onlineStoreUrl, description: $description, descriptionHtml: $descriptionHtml, handle: $handle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.availableForSale, availableForSale) ||
                const DeepCollectionEquality()
                    .equals(other.availableForSale, availableForSale)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.productVariants, productVariants) ||
                const DeepCollectionEquality()
                    .equals(other.productVariants, productVariants)) &&
            (identical(other.productType, productType) ||
                const DeepCollectionEquality()
                    .equals(other.productType, productType)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)) &&
            (identical(other.vendor, vendor) ||
                const DeepCollectionEquality().equals(other.vendor, vendor)) &&
            (identical(other.metafields, metafields) ||
                const DeepCollectionEquality()
                    .equals(other.metafields, metafields)) &&
            (identical(other.collectionList, collectionList) ||
                const DeepCollectionEquality()
                    .equals(other.collectionList, collectionList)) &&
            (identical(other.cursor, cursor) ||
                const DeepCollectionEquality().equals(other.cursor, cursor)) &&
            (identical(other.onlineStoreUrl, onlineStoreUrl) ||
                const DeepCollectionEquality()
                    .equals(other.onlineStoreUrl, onlineStoreUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.descriptionHtml, descriptionHtml) ||
                const DeepCollectionEquality()
                    .equals(other.descriptionHtml, descriptionHtml)) &&
            (identical(other.handle, handle) ||
                const DeepCollectionEquality().equals(other.handle, handle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(availableForSale) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(productVariants) ^
      const DeepCollectionEquality().hash(productType) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(option) ^
      const DeepCollectionEquality().hash(vendor) ^
      const DeepCollectionEquality().hash(metafields) ^
      const DeepCollectionEquality().hash(collectionList) ^
      const DeepCollectionEquality().hash(cursor) ^
      const DeepCollectionEquality().hash(onlineStoreUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(descriptionHtml) ^
      const DeepCollectionEquality().hash(handle);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(this);
  }
}

abstract class _Product extends Product {
  factory _Product(
      {required String title,
      required String id,
      required bool availableForSale,
      required String createdAt,
      required List<ProductVariant> productVariants,
      required String productType,
      required String publishedAt,
      required List<String> tags,
      required String updatedAt,
      required List<ShopifyImage> images,
      required List<Option> option,
      required String vendor,
      required List<Metafield> metafields,
      List<AssociatedCollections>? collectionList,
      String? cursor,
      String? onlineStoreUrl,
      String? description,
      String? descriptionHtml,
      String? handle}) = _$_Product;
  _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get availableForSale => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  List<ProductVariant> get productVariants =>
      throw _privateConstructorUsedError;
  @override
  String get productType => throw _privateConstructorUsedError;
  @override
  String get publishedAt => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  List<ShopifyImage> get images => throw _privateConstructorUsedError;
  @override
  List<Option> get option => throw _privateConstructorUsedError;
  @override
  String get vendor => throw _privateConstructorUsedError;
  @override
  List<Metafield> get metafields => throw _privateConstructorUsedError;
  @override
  List<AssociatedCollections>? get collectionList =>
      throw _privateConstructorUsedError;
  @override
  String? get cursor => throw _privateConstructorUsedError;
  @override
  String? get onlineStoreUrl => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get descriptionHtml => throw _privateConstructorUsedError;
  @override
  String? get handle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
