import 'package:ecommerce_interview_test/bloc/cart_quantity/cart_qauntity_bloc.dart';
import 'package:ecommerce_interview_test/constants/screen_size.dart';
import 'package:ecommerce_interview_test/model/product.dart';
import 'package:ecommerce_interview_test/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailScreen extends StatefulWidget {
  static const routeName = 'ProductDetailScreen';
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  void initState() {
    BlocProvider.of<CartQauntityBloc>(context).add(const OrderPricing());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      'https://admin.maaxkart.com/${product.image}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${product.proName}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Row(
                        children: [
                          Text(
                            '\u{20B9} ${product.sellingPrice}',
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '\u{20B9}${product.price}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Id : \t ${product.id}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    'Sell By : \t ${product.companyName}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    'Quantity : \t ${product.attribute}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    'Total Quantity : \t ${product.qty}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    'Taluk : \t ${product.taluk}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('No.of Items'),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<CartQauntityBloc>(context)
                                  .add(Decrement());
                            },
                            icon: const Icon(
                              Icons.remove,
                            ),
                          ),
                          BlocBuilder<CartQauntityBloc, CartQauntityState>(
                            builder: (context, state) =>
                                Text('${state.quantity}'),
                          ),
                          IconButton(
                              onPressed: () {
                                BlocProvider.of<CartQauntityBloc>(context)
                                    .add(const Increment());
                              },
                              icon: const Icon(Icons.add))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              elevation: 20,
              child: SizedBox(
                height: ScreenSize.size(context).height * 0.15,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Text('Total : '),
                        BlocBuilder<CartQauntityBloc, CartQauntityState>(
                          builder: (context, state) {
                            return Text(
                                '${state.quantity * int.parse(product.price!)}');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Button(
                              name: 'Add to Cart',
                              icon:
                                  const Icon(Icons.add_shopping_cart_outlined),
                              ontap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Item added to cart'),
                                      content: Text(
                                          'Your Item Is Sucessfully Added to Your Cart'),
                                    );
                                  },
                                );
                              }),
                        ),
                        Expanded(
                          child: Button(
                            name: 'Buy Now',
                            icon: const Icon(Icons.add_shopping_cart_outlined),
                            ontap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Success'),
                                    content: Text(
                                        'Your Order Is Sucessfully Placed\nThankYou'),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
