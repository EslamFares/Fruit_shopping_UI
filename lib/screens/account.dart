import 'package:flutter/material.dart';

class AcountScreen extends StatefulWidget {
  @override
  _AcountScreenState createState() => _AcountScreenState();
}

class _AcountScreenState extends State<AcountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('AcountScreen'),
      ),
    );
  }
}
