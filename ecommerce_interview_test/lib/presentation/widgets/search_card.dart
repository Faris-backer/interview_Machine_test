import 'package:ecommerce_interview_test/model/product.dart';
import 'package:ecommerce_interview_test/presentation/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: product);
        },
        title: Text('${product.proName}'),
        subtitle: Text('\u{20B9}${product.price}'),
      ),
    );
  }
}
