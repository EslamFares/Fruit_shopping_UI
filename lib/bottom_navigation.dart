import 'package:flutter/material.dart';
import 'package:lesson_8/screens/account.dart';
import 'package:lesson_8/screens/home.dart';
import 'package:lesson_8/screens/favorite.dart';
import 'screens/cart.dart';

class BottomNavigatonbar extends StatefulWidget {
  @override
  _BottomNavigatonbarState createState() => _BottomNavigatonbarState();
}

class _BottomNavigatonbarState extends State<BottomNavigatonbar> {
  int _currentIndex = 0;
  List bodyWidgets = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    AcountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 30),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart, size: 30),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
        ],
      ),
    );
  }
}
