import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/ucek_appbar.dart';
import 'package:ucek_food_delivery/category_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: <Widget>[
            UcekAppBar(),
            SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                color: isTapped ? Colors.blue : Colors.white,
              ),
            ),
            Text(
              'Popular Dishes',
              style: TextStyle(color: Colors.white70, fontSize: 20),
            ),
            CategoryList(),
//            Container(
//              height: 120,
//              child: ListView.builder(
//                scrollDirection: Axis.horizontal,
//                  itemCount: categoryList.length,
//                  itemBuilder: (context, index) {
//                    return Container(
//                      margin: EdgeInsets.only(right: 12),
////                      height: 80,
//                      width: 60,
//                      color: Colors.white,
//                      child: Text(categoryList[index]),
//                    );
//                  }),
//            )
          ],
        ),
      ),
      bottomNavigationBar:  new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.black,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.green))), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.fastfood, size: 40),
              title: new Text("Food"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_basket, size: 40),
              title: new Text("Buy"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.headset_mic, size: 40),
              title: new Text("Contact"),
            )
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey[800],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}

class ProductCardClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    print(size.height);
    Path path = Path();
    path..moveTo(0,size.height/2 - 20)
    ..lineTo(0, size.height/2 +20)
    ..lineTo(size.width,40)
    ..lineTo(size.width, 0)
    ..lineTo(size.width - 40, 0)
    ..lineTo(0, size.height/2 - 20);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}