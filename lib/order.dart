import 'package:flutter/material.dart';
class Order extends StatelessWidget {
  double length= 60;
  double wide= 150;
  int count;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    color: Colors.grey,
                    child: Container(
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                    width: wide/3-5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                      ),
                                    child: InkWell(
                                      onTap: (){
                                        setState(() {
                                            count = count+1;
                                          });
                                        },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: wide/3-5,
                                color: Colors.red,
                                child: Text('5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                  ),
                                ),
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                    width: wide/3-5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 35,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),
              ),
              Container(
                height: length,
                width: wide,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    width: wide,
                    height: length,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
