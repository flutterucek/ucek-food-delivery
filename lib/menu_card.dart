import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
  String img, name, content, time, amount;
  ItemCard(String img, String name, String content, String time, String amount){
    this.img= img;
    this.name= name;
    this.content= content;
    this.time= time;
    this.amount= amount;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CardClipper(),
          child:Container(
            height: 250,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Container(
          height: 250,
          width: 200,
          child:  Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(top: 15)),
              Container(
                alignment: Alignment.center,
                height: 105,
                width: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.fill,
                  )
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 185,
                padding: EdgeInsets.only(left: 5, top: 15, right: 5),
                child: Column(
                  children: <Widget>[
                    Marquee(
                      child: Text(name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      pauseDuration: Duration(milliseconds: 2500),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 10),
                alignment: Alignment.centerLeft,
                width: 185,
                child: Text(content,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white60,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 75,
                    height: 25,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.timer,
                          color: Colors.white60,
                          size: 15,
                        ),
                        Padding(padding: const EdgeInsets.only(left: 1)),
                        Text(time,
                          style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 25,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 10,
                          height: 75,
                          padding: EdgeInsets.only(top: 5),
                          child: Image.asset('images/rupee.png',
                            width: 30,
                            height: 30,
                            alignment: Alignment.topLeft,
                            color: Colors.redAccent,
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 75,
                          child: Text(amount,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]
    );
  }
}

class CardClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    print(size.height);
    Path path = Path();
    path ..moveTo(0,0)
         ..lineTo(0, size.height/2-30)
         ..lineTo(size.width-30,0)
         ..lineTo(0, 0);
    path ..moveTo(0, size.height/2+20)
         ..lineTo(0, size.height)
         ..lineTo(size.width, size.height)
         ..lineTo(size.width, 30)
         ..lineTo(0, size.height/2+20);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
