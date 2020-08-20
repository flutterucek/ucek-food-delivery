import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/temp_category_card.dart';

class CategoryList extends StatelessWidget {
  String item;
  String img;
  @override
  Widget build(BuildContext context) {
    List<String> categoryList= ['Indian Foods', 'Chineese Foods', 'American Foods', 'Kerala Foods', 'Italian Foods'];
    return Container(
      height: 230,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            item = categoryList[index];
            switch(item){
              case 'Indian Foods': img= 'images/indian.png';
                break;
              case 'Chineese Foods': img= 'images/chinese.png';
                break;
              case 'American Foods': img= 'images/american.png';
                break;
              case 'Kerala Foods': img= 'images/kerala.png';
                break;
              case 'Italian Foods': img= 'images/italian.png';
                break;
            }
            return Container(
              padding: EdgeInsets.all(10.0),
              height: 200,
              width: 120,
              child: CategoryCard(img,item)
            );
          }),
    );
  }
}
