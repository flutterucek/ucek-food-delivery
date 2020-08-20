import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ucek_food_delivery/menu.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  int infocus;
  int flag;
  @override
  Widget build(BuildContext context) {
    List<String> categoryList = ['Indian', 'Chinese', 'American', 'Kerala', 'Italian'];
    List<String> URList=['images/indian.png', 'images/chinese.png', 'images/american.png', 'images/kerala.png', 'images/italian.png'];

    return Column(
      children: <Widget>[
        Container(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      infocus = index;
                      switch(index){
                        case 0: flag= 1;
                          break;
                        case 1: flag= 2;
                          break;
                        case 2: flag= 3;
                          break;
                        case 3: flag= 4;
                          break;
                        case 4: flag= 5;
                          break;
                      }
                    });
                  },
                  child: SizedBox(
                    height: 200,
                    width: 100,
                    child:DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white12) ,
                          borderRadius: BorderRadius.circular(30),
                          color: (infocus==index) ? Colors.greenAccent : Colors.transparent),
                      child: Column(
                        children: [
//====================================IMAGE START====================================================
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 85,
                                width: 75,
                                child: Image.asset(URList[index],
                                  fit:BoxFit.cover),
                              ),
                            ),
                          ),
//=====================================TEXT START====================================================
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                                categoryList[index],
                                style: TextStyle(color: ((infocus==index) ? Colors.black : Colors.white), fontWeight: FontWeight.bold, fontSize: 18)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                                'Foods',
                                style: TextStyle(color: ((infocus==index) ? Colors.black : Colors.white), fontSize: 16)
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                ),
              );
            }
          ),
        ),
        SizedBox(height: 20,),
        Row(
          children: <Widget>[
            SizedBox(width: 10,),
            Text(
              'Popular Dishes',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(width: 5,),
            Container(
              alignment: Alignment.bottomCenter,
              height: 25,
              width: 25,
              child: Image.asset('images/down.png'),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Container(
          height: 260,
          child: MenuList(flag),
        )
      ],
    );
  }
}