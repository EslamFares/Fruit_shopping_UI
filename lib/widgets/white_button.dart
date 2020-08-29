import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WhiteButton extends StatelessWidget {
  Icon icon;
  Function onclick;
  WhiteButton({@required this.icon, @required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.white),
        width: 50,
        height: 50,
        child: IconButton(icon: icon, onPressed: onclick),
      ),
    );
  }
}
