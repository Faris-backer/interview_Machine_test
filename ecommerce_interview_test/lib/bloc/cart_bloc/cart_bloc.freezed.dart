// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  ItemsAdded itemsAdded() {
    return const ItemsAdded();
  }

  ItemsDeleted itemsDeleted({required String productId}) {
    return ItemsDeleted(
      productId: productId,
    );
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() itemsAdded,
    required TResult Function(String productId) itemsDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? itemsAdded,
    TResult Function(String productId)? itemsDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? itemsAdded,
    TResult Function(String productId)? itemsDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsAdded value) itemsAdded,
    required TResult Function(ItemsDeleted value) itemsDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemsAdded value)? itemsAdded,
    TResult Function(ItemsDeleted value)? itemsDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsAdded value)? itemsAdded,
    TResult Function(ItemsDeleted value)? itemsDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class $ItemsAddedCopyWith<$Res> {
  factory $ItemsAddedCopyWith(
          ItemsAdded value, $Res Function(ItemsAdded) then) =
      _$ItemsAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemsAddedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $ItemsAddedCopyWith<$Res> {
  _$ItemsAddedCopyWithImpl(ItemsAdded _value, $Res Function(ItemsAdded) _then)
      : super(_value, (v) => _then(v as ItemsAdded));

  @override
  ItemsAdded get _value => super._value as ItemsAdded;
}

/// @nodoc

class _$ItemsAdded implements ItemsAdded {
  const _$ItemsAdded();

  @override
  String toString() {
    return 'CartEvent.itemsAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ItemsAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() itemsAdded,
    required TResult Function(String productId) itemsDeleted,
  }) {
    return itemsAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? itemsAdded,
    TResult Function(String productId)? itemsDeleted,
  }) {
    return itemsAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? itemsAdded,
    TResult Function(String productId)? itemsDeleted,
    required TResult orElse(),
  }) {
    if (itemsAdded != null) {
      return itemsAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsAdded value) itemsAdded,
    required TResult Function(ItemsDeleted value) itemsDeleted,
  }) {
    return itemsAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemsAdded value)? itemsAdded,
    TResult Function(ItemsDeleted value)? itemsDeleted,
  }) {
    return itemsAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsAdded value)? itemsAdded,
    TResult Function(ItemsDeleted value)? itemsDeleted,
    required TResult orElse(),
  }) {
    if (itemsAdded != null) {
      return itemsAdded(this);
    }
    return orElse();
  }
}

abstract class ItemsAdded implements CartEvent {
  const factory ItemsAdded() = _$ItemsAdded;
}

/// @nodoc
abstract class $ItemsDeletedCopyWith<$Res> {
  factory $ItemsDeletedCopyWith(
          ItemsDeleted value, $Res Function(ItemsDeleted) then) =
      _$ItemsDeletedCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$ItemsDeletedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $ItemsDeletedCopyWith<$Res> {
  _$ItemsDeletedCopyWithImpl(
      ItemsDeleted _value, $Res Function(ItemsDeleted) _then)
      : super(_value, (v) => _then(v as ItemsDeleted));

  @override
  ItemsDeleted get _value => super._value as ItemsDeleted;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(ItemsDeleted(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemsDeleted implements ItemsDeleted {
  const _$ItemsDeleted({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.itemsDeleted(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemsDeleted &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  $ItemsDeletedCopyWith<ItemsDeleted> get copyWith =>
      _$ItemsDeletedCopyWithImpl<ItemsDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() itemsAdded,
    required TResult Function(String productId) itemsDeleted,
  }) {
    return itemsDeleted(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? itemsAdded,
    TResult Function(String productId)? itemsDeleted,
  }) {
    return itemsDeleted?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? itemsAdded,
    TResult Function(String productId)? itemsDeleted,
    required TResult orElse(),
  }) {
    if (itemsDeleted != null) {
      return itemsDeleted(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsAdded value) itemsAdded,
    required TResult Function(ItemsDeleted value) itemsDeleted,
  }) {
    return itemsDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemsAdded value)? itemsAdded,
    TResult Function(ItemsDeleted value)? itemsDeleted,
  }) {
    return itemsDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsAdded value)? itemsAdded,
    TResult Function(ItemsDeleted value)? itemsDeleted,
    required TResult orElse(),
  }) {
    if (itemsDeleted != null) {
      return itemsDeleted(this);
    }
    return orElse();
  }
}

abstract class ItemsDeleted implements CartEvent {
  const factory ItemsDeleted({required String productId}) = _$ItemsDeleted;

  String get productId;
  @JsonKey(ignore: true)
  $ItemsDeletedCopyWith<ItemsDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call() {
    return const _CartState();
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState();

  @override
  String toString() {
    return 'CartState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CartState implements CartState {
  const factory _CartState() = _$_CartState;
}
