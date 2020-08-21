import 'package:flutter/material.dart';
import 'package:ucek_food_delivery/orderbutton.dart';

class Order extends StatelessWidget {
  double length= 60;
  double wide= 150;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF101417),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: length,
                width: wide,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    width: wide,
                    height: length,
                    color: Colors.black,
                    child: OrderButton(),
//=======================Have to add no. of purchases===========================
                        )
                    ),
                  ),
              Container(
                height: length,
                width: wide,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    alignment: Alignment.center,
                    width: wide,
                    height: length,
                    color: const Color(0xFF00EA91),
                    child: Text('Order',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}