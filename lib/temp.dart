import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/order.dart';

class ProductP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101417),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: CardClipper(),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white12,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                    child: Column(
                      children: <Widget>[
                        Container(),//For AppBar
                        Container(),//For Image
                        Container(),//For Name and Amount
                        Container(),//For Contents or discription
                        Container(),//For Option
                        Order(),//For Order
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}

class CardClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    print(size.height);
    Path path = Path();
    path ..moveTo(0,0)
      ..lineTo(0, size.height/2)
      ..lineTo(size.width,30)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);
    path ..moveTo(0, size.height/2+120)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 150)
      ..lineTo(0, size.height/2+120);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}