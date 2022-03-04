part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class GetAllProductBannersSuccessfull extends ProductState {}

class GetAllProductBannersFailed extends ProductState {}

class GetAllProductBannerLoading extends ProductState {}

class GetAllProductCatagoriesSuccessfull extends ProductState {}

class GetAllProductCatagoriesFailed extends ProductState {}

class GetAllProductCatagoriesLoading extends ProductState {}
