part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class GetAllProductsInitial extends ProductState {}

class GetAllProductsLoading extends ProductState {}

class GetAllProductSuccess extends ProductState {}

class GetAllProductFailure extends ProductState {}
