import 'package:bloc/bloc.dart';
import 'package:codignus_demo_project/model/product_banners.dart';
import 'package:codignus_demo_project/model/product_catagory.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) async {
      if (event is GetAllProductBanners) {
        await getAllProductBanners(event, emit);
      }
      if (event is GetAllProductCatagories) {
        await getAllProductCatagories(event, emit);
      }
    });
  }
  List<ProductBanners> productBannerList = [];
  List<ProductCatagory> productCategoryList = [];
  final client = Dio();
  Future getAllProductBanners(
      GetAllProductBanners event, Emitter<ProductState> emit) async {
    String url = 'http://194.233.65.81/needs/api/banners?franchise_id=5';
    Response response = await client.get(url);
    await client.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      final productBannerDetails = productBannersFromJson(response.data);
      productBannerList = productBannerDetails;
      emit(GetAllProductBannersSuccessfull());
    } else {
      emit(GetAllProductBannersFailed());
    }
  }

  Future getAllProductCatagories(
      GetAllProductCatagories event, Emitter<ProductState> emit) async {
    String url = 'http://194.233.65.81/needs/api/categories?franchise_id=5';
    Response response = await client.get(url);
    await client.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      final productCatagory = productCatagoryFromJson(response.data);
      productCategoryList = productCatagory;
      emit(GetAllProductBannersSuccessfull());
    } else {
      print(response.statusMessage);
      emit(GetAllProductBannersFailed());
    }
  }
}
