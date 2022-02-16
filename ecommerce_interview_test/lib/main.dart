import 'package:ecommerce_interview_test/bloc/bloc/search_bloc.dart';
import 'package:ecommerce_interview_test/bloc/cart_quantity/cart_qauntity_bloc.dart';
import 'package:ecommerce_interview_test/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_interview_test/presentation/screens/product_detail_screen.dart';
import 'package:ecommerce_interview_test/presentation/screens/products_overview_screen.dart';
import 'package:ecommerce_interview_test/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductBloc(),
        ),
        BlocProvider(
          create: (context) => CartQauntityBloc(),
        ),
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          textTheme: const TextTheme(
              bodyText1: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
              ),
              bodyText2: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              button: TextStyle(
                  fontFamily: 'Poppins', fontSize: 15, color: Colors.white),
              subtitle1: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              )),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 24,
            ),
          ),
        ),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
          SearchScreen.routeName: (ctx) => const SearchScreen(),
        },
      ),
    );
  }
}
