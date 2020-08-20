import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/custom_appbar.dart';
import 'package:ucek_food_delivery/category_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101417),
      body: Container(
        child: Column(
          children: <Widget>[
            CustomAppBar(),
            SizedBox(height: 20,),
            CategoryList(),
          ],
        ),
      ),
      bottomNavigationBar:  new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: const Color(0xFF101417),
            //I tried removing the "title" elements from the BottomNavigationBar items. But it throws some weird error
            //Anyway, since this works, just finalised with it
            //Would reduce file size if we could get rid of this though
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.greenAccent))), // sets the inactive color of the `BottomNavigationBar`
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
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.grey[800],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}