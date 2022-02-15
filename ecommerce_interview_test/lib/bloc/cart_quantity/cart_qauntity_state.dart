part of 'cart_qauntity_bloc.dart';

@freezed
class CartQauntityState with _$CartQauntityState {
  const factory CartQauntityState({required int quantity}) = _CartQuantityState;
  factory CartQauntityState.initial() => CartQauntityState(quantity: 1);
}
