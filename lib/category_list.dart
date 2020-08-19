import 'package:flutter/material.dart';
class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categoryList = [
      'Indian Food',
      'Chineese Food',
      'Italian Food',
      'Kerala Food'
    ];
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 12),
                      height: 80,
              width: 60,
              color: Colors.white,
              child: Text(categoryList[index]),
            );
          }),
    );
  }
}
