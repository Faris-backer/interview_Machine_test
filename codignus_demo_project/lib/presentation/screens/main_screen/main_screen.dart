import 'package:codignus_demo_project/presentation/screens/home_screen/home_screen.dart';
import 'package:codignus_demo_project/presentation/widgets/bottom_naviagtion_bar_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _pages = const [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, child) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
