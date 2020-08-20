import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/products_appbar.dart';

class ProductPage extends StatelessWidget {
  String img, name, content, time, amount;
  ProductPage(String img, String name, String content, String time, String amount){
    this.img= img;
    this.name= name;
    this.content= content;
    this.time= time;
    this.amount= amount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: <Widget> [
            InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child:product_appbar()
            ),

//============================================ITEM DETAILS DISPLAY=======================================
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 15),
                    height: 300,
                    width: 300,
                    child: Hero(
                      tag: name,
                      child: Image.asset(img),
                      transitionOnUserGestures: true,
                    ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20, top: 15),
                    child:Row(
                      children: [
                        Text(
                            name,
                            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 45),
                          child: Image.asset('images/rupee.png', color: Colors.redAccent),
                        ),
                        Text(
                          amount,
                          style: TextStyle(fontSize: 20, color: Colors.redAccent),
                        )
                      ],
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      content,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                    )
                )
              ],
            ),
          ]
        )
//===================It would've been great to put this in another file. But, then we'd have to pass all this data to it,
//and so it seems a bit complicated. So, did it like this================================================================

      )
    );
  }
}