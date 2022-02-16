import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_interview_test/model/product.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(GetAllProductsInitial()) {
    on<ProductEvent>((event, emit) async {
      if (event is GetAllProductsEvent) {
        await getAllProducts(event, emit);
      }
    });
  }

  List<Product> productList = [];
  final client = Dio();
  Future getAllProducts(
      GetAllProductsEvent event, Emitter<ProductState> emit) async {
    emit(GetAllProductsInitial());
    emit(GetAllProductsLoading());

    String url = 'https://mobi.maaxkart.com/call-back-products-by-loc';
    Response response =
        await client.post(url, data: FormData.fromMap({'location_id': '429'}));
    if (response.statusCode == 200) {
      final productDetails = productFromJson(response.data);
      productList = productDetails;

      emit(GetAllProductSuccess());
    } else {
      emit(GetAllProductFailure());
    }
  }
}
