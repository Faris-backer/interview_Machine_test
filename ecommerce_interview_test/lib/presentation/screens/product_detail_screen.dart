import 'package:ecommerce_interview_test/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_interview_test/bloc/cart_quantity/cart_qauntity_bloc.dart';
import 'package:ecommerce_interview_test/constants/screen_size.dart';
import 'package:ecommerce_interview_test/model/cart_items.dart';
import 'package:ecommerce_interview_test/model/product.dart';
import 'package:ecommerce_interview_test/presentation/screens/cart_screen.dart';
import 'package:ecommerce_interview_test/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = 'ProductDetailScreen';
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quantity = BlocProvider.of<CartQauntityBloc>(context).state.quantity;
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: ScreenSize.size(context).height * 0.08,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Button(
                        name: 'Add to Cart',
                        icon: const Icon(Icons.add_shopping_cart_outlined),
                        ontap: () {
                          CartProducts newProduct = CartProducts(
                            id: product.id!,
                            price: double.parse(product.price!),
                            quantity: quantity,
                            title: product.proName!,
                          );
                          BlocProvider.of<CartBloc>(context)
                              .cartItem
                              .add(newProduct);
                        }),
                  ),
                  Expanded(
                    child: Button(
                      name: 'Buy Now',
                      icon: const Icon(Icons.add_shopping_cart_outlined),
                      ontap: () {
                        Navigator.of(context).pushNamed(CartScreen.routeName,
                            arguments: product);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
