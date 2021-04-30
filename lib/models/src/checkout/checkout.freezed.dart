// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Checkout _$CheckoutFromJson(Map<String, dynamic> json) {
  return _Checkout.fromJson(json);
}

/// @nodoc
class _$CheckoutTearOff {
  const _$CheckoutTearOff();

  _Checkout call(
      {String? id,
      String? email,
      List<AppliedGiftCards>? appliedGiftcards,
      AvailableShippingRates? availableShippingrates,
      ShippingRates? shippingLine,
      MailingAddress? shippingAddress,
      String? completedAt,
      String? createdAt,
      String? currencyCode,
      LineItems? lineItems,
      String? note,
      String? webUrl,
      String? updatedAt,
      PriceV2? totalTaxV2,
      PriceV2? totalPriceV2,
      bool? taxesIncluded,
      bool? taxExempt,
      PriceV2? subtotalPriceV2,
      String? orderStatusUrl,
      bool? requiresShipping,
      Order? order}) {
    return _Checkout(
      id: id,
      email: email,
      appliedGiftcards: appliedGiftcards,
      availableShippingrates: availableShippingrates,
      shippingLine: shippingLine,
      shippingAddress: shippingAddress,
      completedAt: completedAt,
      createdAt: createdAt,
      currencyCode: currencyCode,
      lineItems: lineItems,
      note: note,
      webUrl: webUrl,
      updatedAt: updatedAt,
      totalTaxV2: totalTaxV2,
      totalPriceV2: totalPriceV2,
      taxesIncluded: taxesIncluded,
      taxExempt: taxExempt,
      subtotalPriceV2: subtotalPriceV2,
      orderStatusUrl: orderStatusUrl,
      requiresShipping: requiresShipping,
      order: order,
    );
  }

  Checkout fromJson(Map<String, Object> json) {
    return Checkout.fromJson(json);
  }
}

/// @nodoc
const $Checkout = _$CheckoutTearOff();

/// @nodoc
mixin _$Checkout {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  List<AppliedGiftCards>? get appliedGiftcards =>
      throw _privateConstructorUsedError;
  AvailableShippingRates? get availableShippingrates =>
      throw _privateConstructorUsedError;
  ShippingRates? get shippingLine => throw _privateConstructorUsedError;
  MailingAddress? get shippingAddress => throw _privateConstructorUsedError;
  String? get completedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  LineItems? get lineItems => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get webUrl => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  PriceV2? get totalTaxV2 => throw _privateConstructorUsedError;
  PriceV2? get totalPriceV2 => throw _privateConstructorUsedError;
  bool? get taxesIncluded => throw _privateConstructorUsedError;
  bool? get taxExempt => throw _privateConstructorUsedError;
  PriceV2? get subtotalPriceV2 => throw _privateConstructorUsedError;
  String? get orderStatusUrl => throw _privateConstructorUsedError;
  bool? get requiresShipping => throw _privateConstructorUsedError;
  Order? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutCopyWith<Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutCopyWith<$Res> {
  factory $CheckoutCopyWith(Checkout value, $Res Function(Checkout) then) =
      _$CheckoutCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? email,
      List<AppliedGiftCards>? appliedGiftcards,
      AvailableShippingRates? availableShippingrates,
      ShippingRates? shippingLine,
      MailingAddress? shippingAddress,
      String? completedAt,
      String? createdAt,
      String? currencyCode,
      LineItems? lineItems,
      String? note,
      String? webUrl,
      String? updatedAt,
      PriceV2? totalTaxV2,
      PriceV2? totalPriceV2,
      bool? taxesIncluded,
      bool? taxExempt,
      PriceV2? subtotalPriceV2,
      String? orderStatusUrl,
      bool? requiresShipping,
      Order? order});

  $AvailableShippingRatesCopyWith<$Res>? get availableShippingrates;
  $ShippingRatesCopyWith<$Res>? get shippingLine;
  $MailingAddressCopyWith<$Res>? get shippingAddress;
  $LineItemsCopyWith<$Res>? get lineItems;
  $PriceV2CopyWith<$Res>? get totalTaxV2;
  $PriceV2CopyWith<$Res>? get totalPriceV2;
  $PriceV2CopyWith<$Res>? get subtotalPriceV2;
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class _$CheckoutCopyWithImpl<$Res> implements $CheckoutCopyWith<$Res> {
  _$CheckoutCopyWithImpl(this._value, this._then);

  final Checkout _value;
  // ignore: unused_field
  final $Res Function(Checkout) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? appliedGiftcards = freezed,
    Object? availableShippingrates = freezed,
    Object? shippingLine = freezed,
    Object? shippingAddress = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? currencyCode = freezed,
    Object? lineItems = freezed,
    Object? note = freezed,
    Object? webUrl = freezed,
    Object? updatedAt = freezed,
    Object? totalTaxV2 = freezed,
    Object? totalPriceV2 = freezed,
    Object? taxesIncluded = freezed,
    Object? taxExempt = freezed,
    Object? subtotalPriceV2 = freezed,
    Object? orderStatusUrl = freezed,
    Object? requiresShipping = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      appliedGiftcards: appliedGiftcards == freezed
          ? _value.appliedGiftcards
          : appliedGiftcards // ignore: cast_nullable_to_non_nullable
              as List<AppliedGiftCards>?,
      availableShippingrates: availableShippingrates == freezed
          ? _value.availableShippingrates
          : availableShippingrates // ignore: cast_nullable_to_non_nullable
              as AvailableShippingRates?,
      shippingLine: shippingLine == freezed
          ? _value.shippingLine
          : shippingLine // ignore: cast_nullable_to_non_nullable
              as ShippingRates?,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as MailingAddress?,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: lineItems == freezed
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as LineItems?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      webUrl: webUrl == freezed
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTaxV2: totalTaxV2 == freezed
          ? _value.totalTaxV2
          : totalTaxV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      totalPriceV2: totalPriceV2 == freezed
          ? _value.totalPriceV2
          : totalPriceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      taxesIncluded: taxesIncluded == freezed
          ? _value.taxesIncluded
          : taxesIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      taxExempt: taxExempt == freezed
          ? _value.taxExempt
          : taxExempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      subtotalPriceV2: subtotalPriceV2 == freezed
          ? _value.subtotalPriceV2
          : subtotalPriceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      orderStatusUrl: orderStatusUrl == freezed
          ? _value.orderStatusUrl
          : orderStatusUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresShipping: requiresShipping == freezed
          ? _value.requiresShipping
          : requiresShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ));
  }

  @override
  $AvailableShippingRatesCopyWith<$Res>? get availableShippingrates {
    if (_value.availableShippingrates == null) {
      return null;
    }

    return $AvailableShippingRatesCopyWith<$Res>(_value.availableShippingrates!,
        (value) {
      return _then(_value.copyWith(availableShippingrates: value));
    });
  }

  @override
  $ShippingRatesCopyWith<$Res>? get shippingLine {
    if (_value.shippingLine == null) {
      return null;
    }

    return $ShippingRatesCopyWith<$Res>(_value.shippingLine!, (value) {
      return _then(_value.copyWith(shippingLine: value));
    });
  }

  @override
  $MailingAddressCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $MailingAddressCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value));
    });
  }

  @override
  $LineItemsCopyWith<$Res>? get lineItems {
    if (_value.lineItems == null) {
      return null;
    }

    return $LineItemsCopyWith<$Res>(_value.lineItems!, (value) {
      return _then(_value.copyWith(lineItems: value));
    });
  }

  @override
  $PriceV2CopyWith<$Res>? get totalTaxV2 {
    if (_value.totalTaxV2 == null) {
      return null;
    }

    return $PriceV2CopyWith<$Res>(_value.totalTaxV2!, (value) {
      return _then(_value.copyWith(totalTaxV2: value));
    });
  }

  @override
  $PriceV2CopyWith<$Res>? get totalPriceV2 {
    if (_value.totalPriceV2 == null) {
      return null;
    }

    return $PriceV2CopyWith<$Res>(_value.totalPriceV2!, (value) {
      return _then(_value.copyWith(totalPriceV2: value));
    });
  }

  @override
  $PriceV2CopyWith<$Res>? get subtotalPriceV2 {
    if (_value.subtotalPriceV2 == null) {
      return null;
    }

    return $PriceV2CopyWith<$Res>(_value.subtotalPriceV2!, (value) {
      return _then(_value.copyWith(subtotalPriceV2: value));
    });
  }

  @override
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc
abstract class _$CheckoutCopyWith<$Res> implements $CheckoutCopyWith<$Res> {
  factory _$CheckoutCopyWith(_Checkout value, $Res Function(_Checkout) then) =
      __$CheckoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? email,
      List<AppliedGiftCards>? appliedGiftcards,
      AvailableShippingRates? availableShippingrates,
      ShippingRates? shippingLine,
      MailingAddress? shippingAddress,
      String? completedAt,
      String? createdAt,
      String? currencyCode,
      LineItems? lineItems,
      String? note,
      String? webUrl,
      String? updatedAt,
      PriceV2? totalTaxV2,
      PriceV2? totalPriceV2,
      bool? taxesIncluded,
      bool? taxExempt,
      PriceV2? subtotalPriceV2,
      String? orderStatusUrl,
      bool? requiresShipping,
      Order? order});

  @override
  $AvailableShippingRatesCopyWith<$Res>? get availableShippingrates;
  @override
  $ShippingRatesCopyWith<$Res>? get shippingLine;
  @override
  $MailingAddressCopyWith<$Res>? get shippingAddress;
  @override
  $LineItemsCopyWith<$Res>? get lineItems;
  @override
  $PriceV2CopyWith<$Res>? get totalTaxV2;
  @override
  $PriceV2CopyWith<$Res>? get totalPriceV2;
  @override
  $PriceV2CopyWith<$Res>? get subtotalPriceV2;
  @override
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class __$CheckoutCopyWithImpl<$Res> extends _$CheckoutCopyWithImpl<$Res>
    implements _$CheckoutCopyWith<$Res> {
  __$CheckoutCopyWithImpl(_Checkout _value, $Res Function(_Checkout) _then)
      : super(_value, (v) => _then(v as _Checkout));

  @override
  _Checkout get _value => super._value as _Checkout;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? appliedGiftcards = freezed,
    Object? availableShippingrates = freezed,
    Object? shippingLine = freezed,
    Object? shippingAddress = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? currencyCode = freezed,
    Object? lineItems = freezed,
    Object? note = freezed,
    Object? webUrl = freezed,
    Object? updatedAt = freezed,
    Object? totalTaxV2 = freezed,
    Object? totalPriceV2 = freezed,
    Object? taxesIncluded = freezed,
    Object? taxExempt = freezed,
    Object? subtotalPriceV2 = freezed,
    Object? orderStatusUrl = freezed,
    Object? requiresShipping = freezed,
    Object? order = freezed,
  }) {
    return _then(_Checkout(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      appliedGiftcards: appliedGiftcards == freezed
          ? _value.appliedGiftcards
          : appliedGiftcards // ignore: cast_nullable_to_non_nullable
              as List<AppliedGiftCards>?,
      availableShippingrates: availableShippingrates == freezed
          ? _value.availableShippingrates
          : availableShippingrates // ignore: cast_nullable_to_non_nullable
              as AvailableShippingRates?,
      shippingLine: shippingLine == freezed
          ? _value.shippingLine
          : shippingLine // ignore: cast_nullable_to_non_nullable
              as ShippingRates?,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as MailingAddress?,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: lineItems == freezed
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as LineItems?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      webUrl: webUrl == freezed
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTaxV2: totalTaxV2 == freezed
          ? _value.totalTaxV2
          : totalTaxV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      totalPriceV2: totalPriceV2 == freezed
          ? _value.totalPriceV2
          : totalPriceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      taxesIncluded: taxesIncluded == freezed
          ? _value.taxesIncluded
          : taxesIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      taxExempt: taxExempt == freezed
          ? _value.taxExempt
          : taxExempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      subtotalPriceV2: subtotalPriceV2 == freezed
          ? _value.subtotalPriceV2
          : subtotalPriceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      orderStatusUrl: orderStatusUrl == freezed
          ? _value.orderStatusUrl
          : orderStatusUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresShipping: requiresShipping == freezed
          ? _value.requiresShipping
          : requiresShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Checkout extends _Checkout {
  _$_Checkout(
      {this.id,
      this.email,
      this.appliedGiftcards,
      this.availableShippingrates,
      this.shippingLine,
      this.shippingAddress,
      this.completedAt,
      this.createdAt,
      this.currencyCode,
      this.lineItems,
      this.note,
      this.webUrl,
      this.updatedAt,
      this.totalTaxV2,
      this.totalPriceV2,
      this.taxesIncluded,
      this.taxExempt,
      this.subtotalPriceV2,
      this.orderStatusUrl,
      this.requiresShipping,
      this.order})
      : super._();

  factory _$_Checkout.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutFromJson(json);

  @override
  final String? id;
  @override
  final String? email;
  @override
  final List<AppliedGiftCards>? appliedGiftcards;
  @override
  final AvailableShippingRates? availableShippingrates;
  @override
  final ShippingRates? shippingLine;
  @override
  final MailingAddress? shippingAddress;
  @override
  final String? completedAt;
  @override
  final String? createdAt;
  @override
  final String? currencyCode;
  @override
  final LineItems? lineItems;
  @override
  final String? note;
  @override
  final String? webUrl;
  @override
  final String? updatedAt;
  @override
  final PriceV2? totalTaxV2;
  @override
  final PriceV2? totalPriceV2;
  @override
  final bool? taxesIncluded;
  @override
  final bool? taxExempt;
  @override
  final PriceV2? subtotalPriceV2;
  @override
  final String? orderStatusUrl;
  @override
  final bool? requiresShipping;
  @override
  final Order? order;

  @override
  String toString() {
    return 'Checkout(id: $id, email: $email, appliedGiftcards: $appliedGiftcards, availableShippingrates: $availableShippingrates, shippingLine: $shippingLine, shippingAddress: $shippingAddress, completedAt: $completedAt, createdAt: $createdAt, currencyCode: $currencyCode, lineItems: $lineItems, note: $note, webUrl: $webUrl, updatedAt: $updatedAt, totalTaxV2: $totalTaxV2, totalPriceV2: $totalPriceV2, taxesIncluded: $taxesIncluded, taxExempt: $taxExempt, subtotalPriceV2: $subtotalPriceV2, orderStatusUrl: $orderStatusUrl, requiresShipping: $requiresShipping, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Checkout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.appliedGiftcards, appliedGiftcards) ||
                const DeepCollectionEquality()
                    .equals(other.appliedGiftcards, appliedGiftcards)) &&
            (identical(other.availableShippingrates, availableShippingrates) ||
                const DeepCollectionEquality().equals(
                    other.availableShippingrates, availableShippingrates)) &&
            (identical(other.shippingLine, shippingLine) ||
                const DeepCollectionEquality()
                    .equals(other.shippingLine, shippingLine)) &&
            (identical(other.shippingAddress, shippingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.shippingAddress, shippingAddress)) &&
            (identical(other.completedAt, completedAt) ||
                const DeepCollectionEquality()
                    .equals(other.completedAt, completedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.lineItems, lineItems) ||
                const DeepCollectionEquality()
                    .equals(other.lineItems, lineItems)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.webUrl, webUrl) ||
                const DeepCollectionEquality().equals(other.webUrl, webUrl)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.totalTaxV2, totalTaxV2) ||
                const DeepCollectionEquality()
                    .equals(other.totalTaxV2, totalTaxV2)) &&
            (identical(other.totalPriceV2, totalPriceV2) ||
                const DeepCollectionEquality()
                    .equals(other.totalPriceV2, totalPriceV2)) &&
            (identical(other.taxesIncluded, taxesIncluded) ||
                const DeepCollectionEquality()
                    .equals(other.taxesIncluded, taxesIncluded)) &&
            (identical(other.taxExempt, taxExempt) ||
                const DeepCollectionEquality()
                    .equals(other.taxExempt, taxExempt)) &&
            (identical(other.subtotalPriceV2, subtotalPriceV2) ||
                const DeepCollectionEquality()
                    .equals(other.subtotalPriceV2, subtotalPriceV2)) &&
            (identical(other.orderStatusUrl, orderStatusUrl) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatusUrl, orderStatusUrl)) &&
            (identical(other.requiresShipping, requiresShipping) ||
                const DeepCollectionEquality()
                    .equals(other.requiresShipping, requiresShipping)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(appliedGiftcards) ^
      const DeepCollectionEquality().hash(availableShippingrates) ^
      const DeepCollectionEquality().hash(shippingLine) ^
      const DeepCollectionEquality().hash(shippingAddress) ^
      const DeepCollectionEquality().hash(completedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(lineItems) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(webUrl) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(totalTaxV2) ^
      const DeepCollectionEquality().hash(totalPriceV2) ^
      const DeepCollectionEquality().hash(taxesIncluded) ^
      const DeepCollectionEquality().hash(taxExempt) ^
      const DeepCollectionEquality().hash(subtotalPriceV2) ^
      const DeepCollectionEquality().hash(orderStatusUrl) ^
      const DeepCollectionEquality().hash(requiresShipping) ^
      const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$CheckoutCopyWith<_Checkout> get copyWith =>
      __$CheckoutCopyWithImpl<_Checkout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutToJson(this);
  }
}

abstract class _Checkout extends Checkout {
  factory _Checkout(
      {String? id,
      String? email,
      List<AppliedGiftCards>? appliedGiftcards,
      AvailableShippingRates? availableShippingrates,
      ShippingRates? shippingLine,
      MailingAddress? shippingAddress,
      String? completedAt,
      String? createdAt,
      String? currencyCode,
      LineItems? lineItems,
      String? note,
      String? webUrl,
      String? updatedAt,
      PriceV2? totalTaxV2,
      PriceV2? totalPriceV2,
      bool? taxesIncluded,
      bool? taxExempt,
      PriceV2? subtotalPriceV2,
      String? orderStatusUrl,
      bool? requiresShipping,
      Order? order}) = _$_Checkout;
  _Checkout._() : super._();

  factory _Checkout.fromJson(Map<String, dynamic> json) = _$_Checkout.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  List<AppliedGiftCards>? get appliedGiftcards =>
      throw _privateConstructorUsedError;
  @override
  AvailableShippingRates? get availableShippingrates =>
      throw _privateConstructorUsedError;
  @override
  ShippingRates? get shippingLine => throw _privateConstructorUsedError;
  @override
  MailingAddress? get shippingAddress => throw _privateConstructorUsedError;
  @override
  String? get completedAt => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  String? get currencyCode => throw _privateConstructorUsedError;
  @override
  LineItems? get lineItems => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get webUrl => throw _privateConstructorUsedError;
  @override
  String? get updatedAt => throw _privateConstructorUsedError;
  @override
  PriceV2? get totalTaxV2 => throw _privateConstructorUsedError;
  @override
  PriceV2? get totalPriceV2 => throw _privateConstructorUsedError;
  @override
  bool? get taxesIncluded => throw _privateConstructorUsedError;
  @override
  bool? get taxExempt => throw _privateConstructorUsedError;
  @override
  PriceV2? get subtotalPriceV2 => throw _privateConstructorUsedError;
  @override
  String? get orderStatusUrl => throw _privateConstructorUsedError;
  @override
  bool? get requiresShipping => throw _privateConstructorUsedError;
  @override
  Order? get order => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutCopyWith<_Checkout> get copyWith =>
      throw _privateConstructorUsedError;
}
