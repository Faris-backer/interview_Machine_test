part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.itemsAdded() = ItemsAdded;
  const factory CartEvent.itemsDeleted({required String productId}) =
      ItemsDeleted;
}
