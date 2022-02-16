// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_qauntity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartQauntityEventTearOff {
  const _$CartQauntityEventTearOff();

  Increment increment() {
    return const Increment();
  }

  Decrement decrement() {
    return const Decrement();
  }

  OrderPricing totalPricing() {
    return const OrderPricing();
  }
}

/// @nodoc
const $CartQauntityEvent = _$CartQauntityEventTearOff();

/// @nodoc
mixin _$CartQauntityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() totalPricing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(OrderPricing value) totalPricing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartQauntityEventCopyWith<$Res> {
  factory $CartQauntityEventCopyWith(
          CartQauntityEvent value, $Res Function(CartQauntityEvent) then) =
      _$CartQauntityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartQauntityEventCopyWithImpl<$Res>
    implements $CartQauntityEventCopyWith<$Res> {
  _$CartQauntityEventCopyWithImpl(this._value, this._then);

  final CartQauntityEvent _value;
  // ignore: unused_field
  final $Res Function(CartQauntityEvent) _then;
}

/// @nodoc
abstract class $IncrementCopyWith<$Res> {
  factory $IncrementCopyWith(Increment value, $Res Function(Increment) then) =
      _$IncrementCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncrementCopyWithImpl<$Res>
    extends _$CartQauntityEventCopyWithImpl<$Res>
    implements $IncrementCopyWith<$Res> {
  _$IncrementCopyWithImpl(Increment _value, $Res Function(Increment) _then)
      : super(_value, (v) => _then(v as Increment));

  @override
  Increment get _value => super._value as Increment;
}

/// @nodoc

class _$Increment implements Increment {
  const _$Increment();

  @override
  String toString() {
    return 'CartQauntityEvent.increment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Increment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() totalPricing,
  }) {
    return increment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
  }) {
    return increment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(OrderPricing value) totalPricing,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class Increment implements CartQauntityEvent {
  const factory Increment() = _$Increment;
}

/// @nodoc
abstract class $DecrementCopyWith<$Res> {
  factory $DecrementCopyWith(Decrement value, $Res Function(Decrement) then) =
      _$DecrementCopyWithImpl<$Res>;
}

/// @nodoc
class _$DecrementCopyWithImpl<$Res>
    extends _$CartQauntityEventCopyWithImpl<$Res>
    implements $DecrementCopyWith<$Res> {
  _$DecrementCopyWithImpl(Decrement _value, $Res Function(Decrement) _then)
      : super(_value, (v) => _then(v as Decrement));

  @override
  Decrement get _value => super._value as Decrement;
}

/// @nodoc

class _$Decrement implements Decrement {
  const _$Decrement();

  @override
  String toString() {
    return 'CartQauntityEvent.decrement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Decrement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() totalPricing,
  }) {
    return decrement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
  }) {
    return decrement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(OrderPricing value) totalPricing,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class Decrement implements CartQauntityEvent {
  const factory Decrement() = _$Decrement;
}

/// @nodoc
abstract class $OrderPricingCopyWith<$Res> {
  factory $OrderPricingCopyWith(
          OrderPricing value, $Res Function(OrderPricing) then) =
      _$OrderPricingCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderPricingCopyWithImpl<$Res>
    extends _$CartQauntityEventCopyWithImpl<$Res>
    implements $OrderPricingCopyWith<$Res> {
  _$OrderPricingCopyWithImpl(
      OrderPricing _value, $Res Function(OrderPricing) _then)
      : super(_value, (v) => _then(v as OrderPricing));

  @override
  OrderPricing get _value => super._value as OrderPricing;
}

/// @nodoc

class _$OrderPricing implements OrderPricing {
  const _$OrderPricing();

  @override
  String toString() {
    return 'CartQauntityEvent.totalPricing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderPricing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() totalPricing,
  }) {
    return totalPricing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
  }) {
    return totalPricing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? totalPricing,
    required TResult orElse(),
  }) {
    if (totalPricing != null) {
      return totalPricing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(OrderPricing value) totalPricing,
  }) {
    return totalPricing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
  }) {
    return totalPricing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(OrderPricing value)? totalPricing,
    required TResult orElse(),
  }) {
    if (totalPricing != null) {
      return totalPricing(this);
    }
    return orElse();
  }
}

abstract class OrderPricing implements CartQauntityEvent {
  const factory OrderPricing() = _$OrderPricing;
}

/// @nodoc
class _$CartQauntityStateTearOff {
  const _$CartQauntityStateTearOff();

  _CartQuantityState call({required int quantity}) {
    return _CartQuantityState(
      quantity: quantity,
    );
  }
}

/// @nodoc
const $CartQauntityState = _$CartQauntityStateTearOff();

/// @nodoc
mixin _$CartQauntityState {
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartQauntityStateCopyWith<CartQauntityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartQauntityStateCopyWith<$Res> {
  factory $CartQauntityStateCopyWith(
          CartQauntityState value, $Res Function(CartQauntityState) then) =
      _$CartQauntityStateCopyWithImpl<$Res>;
  $Res call({int quantity});
}

/// @nodoc
class _$CartQauntityStateCopyWithImpl<$Res>
    implements $CartQauntityStateCopyWith<$Res> {
  _$CartQauntityStateCopyWithImpl(this._value, this._then);

  final CartQauntityState _value;
  // ignore: unused_field
  final $Res Function(CartQauntityState) _then;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartQuantityStateCopyWith<$Res>
    implements $CartQauntityStateCopyWith<$Res> {
  factory _$CartQuantityStateCopyWith(
          _CartQuantityState value, $Res Function(_CartQuantityState) then) =
      __$CartQuantityStateCopyWithImpl<$Res>;
  @override
  $Res call({int quantity});
}

/// @nodoc
class __$CartQuantityStateCopyWithImpl<$Res>
    extends _$CartQauntityStateCopyWithImpl<$Res>
    implements _$CartQuantityStateCopyWith<$Res> {
  __$CartQuantityStateCopyWithImpl(
      _CartQuantityState _value, $Res Function(_CartQuantityState) _then)
      : super(_value, (v) => _then(v as _CartQuantityState));

  @override
  _CartQuantityState get _value => super._value as _CartQuantityState;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_CartQuantityState(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartQuantityState implements _CartQuantityState {
  const _$_CartQuantityState({required this.quantity});

  @override
  final int quantity;

  @override
  String toString() {
    return 'CartQauntityState(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartQuantityState &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$CartQuantityStateCopyWith<_CartQuantityState> get copyWith =>
      __$CartQuantityStateCopyWithImpl<_CartQuantityState>(this, _$identity);
}

abstract class _CartQuantityState implements CartQauntityState {
  const factory _CartQuantityState({required int quantity}) =
      _$_CartQuantityState;

  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$CartQuantityStateCopyWith<_CartQuantityState> get copyWith =>
      throw _privateConstructorUsedError;
}
