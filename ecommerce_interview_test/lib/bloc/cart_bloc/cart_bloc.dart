import 'package:bloc/bloc.dart';
import 'package:ecommerce_interview_test/model/cart_items.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<ItemsAdded>((event, emit) {});
    on<ItemsDeleted>((event, emit) {
      cartItem.removeWhere((product) {
        return product.id == event.productId;
      });
    });
  }

  List<CartProducts> cartItem = [];
  double get totalAmount {
    var total = 0.0;
    for (var cartProducts in cartItem) {
      total += cartProducts.price * cartProducts.quantity;
    }
    return total;
  }
}
