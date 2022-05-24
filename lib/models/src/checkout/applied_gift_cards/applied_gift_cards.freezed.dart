// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'applied_gift_cards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppliedGiftCards _$AppliedGiftCardsFromJson(Map<String, dynamic> json) {
  return _AppliedGiftCards.fromJson(json);
}

/// @nodoc
mixin _$AppliedGiftCards {
  PriceV2 get amountUsedV2 => throw _privateConstructorUsedError;
  PriceV2 get balanceV2 => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppliedGiftCardsCopyWith<AppliedGiftCards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedGiftCardsCopyWith<$Res> {
  factory $AppliedGiftCardsCopyWith(
          AppliedGiftCards value, $Res Function(AppliedGiftCards) then) =
      _$AppliedGiftCardsCopyWithImpl<$Res>;
  $Res call({PriceV2 amountUsedV2, PriceV2 balanceV2, String id});

  $PriceV2CopyWith<$Res> get amountUsedV2;
  $PriceV2CopyWith<$Res> get balanceV2;
}

/// @nodoc
class _$AppliedGiftCardsCopyWithImpl<$Res>
    implements $AppliedGiftCardsCopyWith<$Res> {
  _$AppliedGiftCardsCopyWithImpl(this._value, this._then);

  final AppliedGiftCards _value;
  // ignore: unused_field
  final $Res Function(AppliedGiftCards) _then;

  @override
  $Res call({
    Object? amountUsedV2 = freezed,
    Object? balanceV2 = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      amountUsedV2: amountUsedV2 == freezed
          ? _value.amountUsedV2
          : amountUsedV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      balanceV2: balanceV2 == freezed
          ? _value.balanceV2
          : balanceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PriceV2CopyWith<$Res> get amountUsedV2 {
    return $PriceV2CopyWith<$Res>(_value.amountUsedV2, (value) {
      return _then(_value.copyWith(amountUsedV2: value));
    });
  }

  @override
  $PriceV2CopyWith<$Res> get balanceV2 {
    return $PriceV2CopyWith<$Res>(_value.balanceV2, (value) {
      return _then(_value.copyWith(balanceV2: value));
    });
  }
}

/// @nodoc
abstract class _$$_AppliedGiftCardsCopyWith<$Res>
    implements $AppliedGiftCardsCopyWith<$Res> {
  factory _$$_AppliedGiftCardsCopyWith(
          _$_AppliedGiftCards value, $Res Function(_$_AppliedGiftCards) then) =
      __$$_AppliedGiftCardsCopyWithImpl<$Res>;
  @override
  $Res call({PriceV2 amountUsedV2, PriceV2 balanceV2, String id});

  @override
  $PriceV2CopyWith<$Res> get amountUsedV2;
  @override
  $PriceV2CopyWith<$Res> get balanceV2;
}

/// @nodoc
class __$$_AppliedGiftCardsCopyWithImpl<$Res>
    extends _$AppliedGiftCardsCopyWithImpl<$Res>
    implements _$$_AppliedGiftCardsCopyWith<$Res> {
  __$$_AppliedGiftCardsCopyWithImpl(
      _$_AppliedGiftCards _value, $Res Function(_$_AppliedGiftCards) _then)
      : super(_value, (v) => _then(v as _$_AppliedGiftCards));

  @override
  _$_AppliedGiftCards get _value => super._value as _$_AppliedGiftCards;

  @override
  $Res call({
    Object? amountUsedV2 = freezed,
    Object? balanceV2 = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_AppliedGiftCards(
      amountUsedV2: amountUsedV2 == freezed
          ? _value.amountUsedV2
          : amountUsedV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      balanceV2: balanceV2 == freezed
          ? _value.balanceV2
          : balanceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppliedGiftCards extends _AppliedGiftCards {
  _$_AppliedGiftCards(
      {required this.amountUsedV2, required this.balanceV2, required this.id})
      : super._();

  factory _$_AppliedGiftCards.fromJson(Map<String, dynamic> json) =>
      _$$_AppliedGiftCardsFromJson(json);

  @override
  final PriceV2 amountUsedV2;
  @override
  final PriceV2 balanceV2;
  @override
  final String id;

  @override
  String toString() {
    return 'AppliedGiftCards(amountUsedV2: $amountUsedV2, balanceV2: $balanceV2, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppliedGiftCards &&
            const DeepCollectionEquality()
                .equals(other.amountUsedV2, amountUsedV2) &&
            const DeepCollectionEquality().equals(other.balanceV2, balanceV2) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amountUsedV2),
      const DeepCollectionEquality().hash(balanceV2),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_AppliedGiftCardsCopyWith<_$_AppliedGiftCards> get copyWith =>
      __$$_AppliedGiftCardsCopyWithImpl<_$_AppliedGiftCards>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppliedGiftCardsToJson(this);
  }
}

abstract class _AppliedGiftCards extends AppliedGiftCards {
  factory _AppliedGiftCards(
      {required final PriceV2 amountUsedV2,
      required final PriceV2 balanceV2,
      required final String id}) = _$_AppliedGiftCards;
  _AppliedGiftCards._() : super._();

  factory _AppliedGiftCards.fromJson(Map<String, dynamic> json) =
      _$_AppliedGiftCards.fromJson;

  @override
  PriceV2 get amountUsedV2 => throw _privateConstructorUsedError;
  @override
  PriceV2 get balanceV2 => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppliedGiftCardsCopyWith<_$_AppliedGiftCards> get copyWith =>
      throw _privateConstructorUsedError;
}
