import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/ucek_appbar.dart';
import 'package:ucek_food_delivery/category_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: <Widget>[
            UcekAppBar(),
            CategoryList(),
          ],
        ),
      ),
      bottomNavigationBar:  new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.greenAccent))),
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
          selectedItemColor: Color(0xff33ff77),
          unselectedItemColor: Colors.grey[800],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}