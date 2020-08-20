import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String img;
  String name;
  bool isTapped=false;
  CategoryCard(String img, String name){
    this.img= img;
    this.name= name;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            //setState()
          },
        ),
        Container(
        alignment: Alignment.center,
        width: 120,
        height: 200,
        decoration: BoxDecoration(
          color: isTapped? Colors.green:const Color(0xFF272B2E),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          width: 118,
          height: 198,
          decoration: BoxDecoration(
            color: isTapped? Colors.green:const Color(0xFF101417),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 105,
                    height: 105,
                    child: Image.asset(img,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
               Container(
                  width: 95,
                  height: 50,
                  //color: Colors.green,
                  child: Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                   ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]
    );
  }
}
