import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/nav_button.dart';

class product_appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top+20, left: 15),
      child:NavButton(Icons.arrow_back_ios,)
      );
  }
}