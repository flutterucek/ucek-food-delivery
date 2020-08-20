import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/navbutton.dart';

class UcekAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+20),
      child:Row(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child:InkWell(
              onTap: (){print("List button was clicked");},
              child: NavButton(Icons.list)
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width-170),
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
