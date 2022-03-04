import 'package:codignus_demo_project/bloc/product_bloc.dart';
import 'package:codignus_demo_project/presentation/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(),
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.pink,
            scaffoldBackgroundColor: Colors.black,
            textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white),
            )),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
  }
}
