import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:lesson_8/widgets/poduct_cart.dart';
import 'package:lesson_8/widgets/white_button.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                WhiteButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  onclick: () {
                    print('back');
                  },
                ),
                Text('My cart Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold)),
                WhiteButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  onclick: () {
                    print('cart');
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 2.3,
              child: ListView(
                children: <Widget>[
                  ProductinCart(
                    name: 'Banana',
                    price: 4.21,
                    imageLink:
                        'https://2dokan.com/wp-content/uploads/2019/12/%D9%85%D9%88%D8%B2.png',
                  ),
                  ProductinCart(
                    name: 'Pear',
                    price: 5.25,
                    imageLink:
                        'https://khodar.com/wp-content/uploads/2019/10/%D9%83%D9%85%D8%AB%D8%B1%D9%89-%D8%A8%D9%84%D8%AF%D9%8A.png',
                  ),
                  ProductinCart(
                    name: 'Apple',
                    price: 124.00,
                    imageLink:
                        'https://khodar.com/wp-content/uploads/2018/12/%D8%AA%D9%81%D8%A7%D8%AD-%D8%A3%D8%AE%D8%B6%D8%B1-%D8%AF%D8%A7%D9%8A%D8%AA-600x600.png',
                  ),
                  ProductinCart(
                    name: 'Grape',
                    price: 124.00,
                    imageLink:
                        'https://alamphoto.com/wp-content/uploads/2017/12/Fruit-grape-black-wallpapers-623x623.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Subtotal',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '\$133.46',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Delivery Fee',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '\$3.80',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Tax',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '\$4.51',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 5.0,
                dashColor: Colors.black,
                dashRadius: 5.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.white,
                dashGapRadius: 0.0,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'TotalAmount',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '\$141.77',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 100,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                color: Colors.deepOrangeAccent[400],
                child: Text(
                  'Check Out Now',
                  style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
