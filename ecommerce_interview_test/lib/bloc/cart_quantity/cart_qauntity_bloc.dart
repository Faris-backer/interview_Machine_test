import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_qauntity_event.dart';
part 'cart_qauntity_state.dart';
part 'cart_qauntity_bloc.freezed.dart';

class CartQauntityBloc extends Bloc<CartQauntityEvent, CartQauntityState> {
  CartQauntityBloc() : super(CartQauntityState.initial()) {
    on<Increment>((event, emit) {
      return emit(state.copyWith(quantity: state.quantity + 1));
    });
    on<Decrement>((event, emit) {
      return emit(state.copyWith(quantity: state.quantity - 1));
    });
  }
}
