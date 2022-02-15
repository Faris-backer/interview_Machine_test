import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce_interview_test/model/product.dart';

class Products {
  final client = Dio();
  Future<Product> fetchProductsByLocation() async {
    String url = 'https://mobi.maaxkart.com/call-back-products-by-loc';
    final response =
        await client.post(url, data: FormData.fromMap({'location_id': '429'}));
    if (response.statusCode == 200) {
      print(response.data);
      final product = productFromJson(response.data);
      return response.data;
    } else {
      throw Exception('there is an exception');
    }
  }
}
