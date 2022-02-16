part of 'cart_qauntity_bloc.dart';

@freezed
class CartQauntityEvent with _$CartQauntityEvent {
  const factory CartQauntityEvent.increment() = Increment;
  const factory CartQauntityEvent.decrement() = Decrement;
  const factory CartQauntityEvent.totalPricing() = OrderPricing;
}
