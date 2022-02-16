import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_interview_test/model/product.dart';
import 'package:flutter/cupertino.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<GetAllSearches>((event, emit) async {
      await getAllSearches(event, emit);
    });
  }
  List<Product> searchList = [];
  var client = Dio();
  Future getAllSearches(GetAllSearches event, Emitter<SearchState> emit) async {
    emit(SearchInitial());
    emit(SearchLoading());

    String url = 'https://mobi.maaxkart.com/call-back-productsearch';
    Response response = await client.post(url,
        data: FormData.fromMap(
            {'location_id': '429', 'keyword': '${event.searchQuery}'}));
    if (response.statusCode == 200) {
      final productDetails = productFromJson(response.data);
      searchList = productDetails;

      emit(SearchSuccess());
    } else {
      emit(SearchFailure());
    }
  }
}
