import 'package:ecommerce_interview_test/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_interview_test/model/cart_items.dart';
import 'package:ecommerce_interview_test/presentation/widgets/app_drawer.dart';
import 'package:ecommerce_interview_test/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/CartScreen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    List<CartProducts> cartItem = BlocProvider.of<CartBloc>(context).cartItem;
    final totalPrice = BlocProvider.of<CartBloc>(context).totalAmount;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Spacer(),
                  Chip(
                    label: Text(
                      '\u{20B9}$totalPrice',
                      style: TextStyle(
                        color:
                            Theme.of(context).primaryTextTheme.headline1!.color,
                      ),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  TextButton(
                    child: Text(
                      'ORDER NOW',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        cartItem.clear();
                      });
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text('Are you Sure?'),
                              content: Text(
                                  'Your Order Is Successfully Placed /n Plaese Pay The Cash to Devlivary Agent /n ThankYou'),
                            );
                          });
                    },
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
                itemCount: cartItem.length,
                itemBuilder: (ctx, i) => CartItem(
                      id: cartItem[i].id,
                      price: cartItem[i].price.toString(),
                      productId: cartItem[i].id,
                      quantity: cartItem[i].quantity.toString(),
                      title: cartItem[i].title,
                    )),
          ),
        ],
      ),
    );
  }
}
