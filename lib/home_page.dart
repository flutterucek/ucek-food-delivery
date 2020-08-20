import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/temp_category_card.dart';
import 'package:ucek_food_delivery/menu.dart';
import 'package:ucek_food_delivery/menu_card.dart';
import 'package:ucek_food_delivery/ucek_appbar.dart';
import 'package:ucek_food_delivery/temp_category_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101417),
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
            //CategoryCard('images/kerala.png', 'Kerala Foods'),
            //ItemCard('images/1.jpeg','Data','hahahahhsadsajdhksdchjdscc','1h 12m','180.00'),
            MenuList(5),
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
          canvasColor: const Color(0xFF101417),
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: new TextStyle(
              color: Colors.green,
            ),
          ),
        ), // sets the inactive color of the `BottomNavigationBar`
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
