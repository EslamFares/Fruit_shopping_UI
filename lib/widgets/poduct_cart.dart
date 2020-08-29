import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductinCart extends StatefulWidget {
  String imageLink, name;
  double price;
  ProductinCart(
      {@required this.name, @required this.imageLink, @required this.price});

  @override
  _ProductinCartState createState() => _ProductinCartState();
}

class _ProductinCartState extends State<ProductinCart> {
  @override
  int mount = 1;
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: NetworkImage(widget.imageLink), fit: BoxFit.cover)),
        ),
        SizedBox(width: 10),
        Container(
          height: 100,
          // color: Colors.red,
          width: MediaQuery.of(context).size.width - 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('\$${widget.price}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.indeterminate_check_box,
                              size: 30,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                mount > 1 ? mount-- : null;
                              });
                            }),
                        Text(
                          '${mount}',
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.add_box,
                              size: 30,
                              color: Colors.deepOrange,
                            ),
                            onPressed: () {
                              setState(() {
                                mount++;
                              });
                            }),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width - 140) / 2,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        elevation: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.delete,
                              color: Colors.deepOrange,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text('Remove')
                          ],
                        ),
                        onPressed: () {}),
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width - 140) / 2.3,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.deepOrange,
                        elevation: 5,
                        child: Text(
                          'Order Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {}),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
