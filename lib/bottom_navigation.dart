import 'package:flutter/material.dart';
import 'package:lesson_8/screens/home.dart';
import 'package:lesson_8/screens/search.dart';
import 'widgets/mail.dart';
import 'screens/notification.dart';

class BottomNavigatonbar extends StatefulWidget {
  @override
  _BottomNavigatonbarState createState() => _BottomNavigatonbarState();
}

class _BottomNavigatonbarState extends State<BottomNavigatonbar> {
  int _currentIndex = 0;
  List bodyWidgets = [
    HomeScreen(),
    SearchScreen(),
    NotifiactionScreen(),
    MailScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white),
      body: bodyWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.search, size: 30),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 30),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline, size: 30),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
        ],
      ),
    );
  }
}
