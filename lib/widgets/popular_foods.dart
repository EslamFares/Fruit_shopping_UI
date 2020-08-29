import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularFoods extends StatelessWidget {
  // const PopularFoods({
  //   Key key,
  // }) : super(key: key);
  String name, imageLink;
  double price;
  PopularFoods(
      {@required this.name, @required this.price, @required this.imageLink});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text('Only \$$price',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            image: NetworkImage(imageLink))),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {
                        print('add product');
                      },
                      icon: Icon(
                        Icons.add_box,
                        color: Colors.deepOrange,
                        size: 40,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
