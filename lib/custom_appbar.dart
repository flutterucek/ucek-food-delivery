import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+20),
      child:Row(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: (){print("List button was clicked");},
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child:DecoratedBox(
                    decoration: BoxDecoration(color: Color(0xff404040)),
                    child: Icon(
                      Icons.list,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width-140),
            child:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: (){print("Search button was clicked");},
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child:DecoratedBox(
                    decoration: BoxDecoration(color: Color(0xff404040)),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
