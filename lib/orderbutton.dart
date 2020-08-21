import 'package:flutter/material.dart';

class OrderButton extends StatefulWidget {
  @override
  _OrderButtonState createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  int number = 1;
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(5),
      child:Row(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                if(number<=8) {
                  number++;
                }
              });
            },
            child:ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: 50,
                width: 50,
                child:DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white12),
                  child: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text(number.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),)
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child:InkWell(
              onTap: (){
                setState(() {
                  if(number>0) {
                    number--;
                  }
                });
              },
              child:ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child:DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white12),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child:Icon(
                          Icons.minimize,
                          size: 25,
                          color: Colors.grey,
                        ),
                      )
                  ),
                ),
              ),
            )
          )
        ],
      )
    );
  }
}