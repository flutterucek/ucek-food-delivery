import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/navbutton.dart';

class product_appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top+20, left: 25),
      child:NavButton(Icons.arrow_back_ios)
      );
  }
}