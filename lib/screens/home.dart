import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lesson_8/widgets/popular_foods.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  List FoodGridList = [
    PopularFoods(
      name: 'Banana',
      price: 4.21,
      imageLink:
          'https://2dokan.com/wp-content/uploads/2019/12/%D9%85%D9%88%D8%B2.png',
    ),
    PopularFoods(
      name: 'Apple',
      price: 10.00,
      imageLink:
          'https://khodar.com/wp-content/uploads/2018/12/%D8%AA%D9%81%D8%A7%D8%AD-%D8%A3%D8%AE%D8%B6%D8%B1-%D8%AF%D8%A7%D9%8A%D8%AA-600x600.png',
    ),
    PopularFoods(
      name: 'pear',
      price: 5.69,
      imageLink:
          'https://khodar.com/wp-content/uploads/2019/10/%D9%83%D9%85%D8%AB%D8%B1%D9%89-%D8%A8%D9%84%D8%AF%D9%8A.png',
    ),
    PopularFoods(
      name: 'Grape',
      price: 1.25,
      imageLink:
          'https://alamphoto.com/wp-content/uploads/2017/12/Fruit-grape-black-wallpapers-623x623.png',
    ),
    PopularFoods(
      name: 'Kiwi',
      price: 1.25,
      imageLink:
          'https://www.jing.fm/clipimg/full/14-148952_kiwi-fruit-png-clipart-kiwi-clipart.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              print('setting_homepage');
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 15, bottom: 15, right: 5),
                child: Material(
                  borderRadius: BorderRadius.circular(15.0),
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search something',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(15.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(15.0)),
                        disabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0),
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Material(
                  borderRadius: BorderRadius.circular(15.0),
                  elevation: 5,
                  child: InkWell(
                    onTap: () {
                      print('setting search button');
                    },
                    child: Container(
                      width: 50,
                      height: 53,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.tune,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 160,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/583840/pexels-photo-583840.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular Foods',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Veiw all',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: .77),
                itemCount: FoodGridList.length,
                itemBuilder: (context, index) {
                  return FoodGridList[index];
                }),
          )
        ],
      ),
    );
  }
}
