import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/ucek_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;
  List<String> categoryList = [
    'Indian Food',
    'Chineese Food',
    'Italian Food',
    'Kerala Food'
  ];

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
            ClipPath(

//              clipper: ProductCardClipper(),
              child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Stack(
                  children: <Widget>[

                  ],
                ),
              ),
            )

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