import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/home_page.dart';
import 'package:ucek_food_delivery/temp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ProductP());//HomePage());
  }
}


