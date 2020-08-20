import 'package:flutter/material.dart';

class NavButton extends StatelessWidget{
  IconData icon;
  NavButton (IconData icon){this.icon = icon;}
  @override
  Widget build (BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 60,
        width: 60,
        child:DecoratedBox(
          decoration: BoxDecoration(color: Colors.white12),
          child: Icon(
            icon,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}