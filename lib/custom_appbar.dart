import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/nav_button.dart';

class UcekAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+20),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child:InkWell(
              onTap: (){print("List button was clicked");},
              child: NavButton(Icons.list)
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child:InkWell(
              onTap: (){print("Search button was clicked");},
              child: NavButton(Icons.search),
            )
          )
        ],
      ),
    );
  }
}
