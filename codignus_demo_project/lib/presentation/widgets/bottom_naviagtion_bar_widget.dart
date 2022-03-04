import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int _newIndex, child) {
        // return BottomNavigationBar(
        //     type: BottomNavigationBarType.shifting,
        //     selectedIconTheme: IconThemeData(
        //       color: Colors.pink,
        //     ),

        //     currentIndex: _newIndex,
        //     onTap: (index) {
        //       indexChangeNotifier.value = index;
        //     },
        //     backgroundColor: Colors.black,
        //     selectedItemColor: Colors.white,
        //     unselectedItemColor: Colors.grey,
        //     items: [
        //       BottomNavigationBarItem(
        //           icon: const Icon(Icons.home),
        //           label: 'Home',
        //           backgroundColor: Colors.grey[800]),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.shopping_basket), label: 'cart'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.message), label: 'notifications'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.person), label: 'profile'),
        //     ]);
        return BottomNavyBar(
          items: [
            BottomNavyBarItem(
              activeColor: Colors.pink,
              inactiveColor: Colors.pink,
              icon: const Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              inactiveColor: Colors.pink,
              icon: const Icon(Icons.shopping_basket),
              title: Text('Cart'),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              inactiveColor: Colors.pink,
              icon: const Icon(Icons.message),
              title: Text('Notification'),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              inactiveColor: Colors.pink,
              icon: const Icon(Icons.person),
              title: Text('Cart'),
            ),
          ],
          onItemSelected: (value) {},
          backgroundColor: Colors.grey[800],
          animationDuration: Duration(milliseconds: 300),
          selectedIndex: _newIndex,
        );
      },
    );
  }
}
