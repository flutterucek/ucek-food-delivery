import 'package:flutter/material.dart';

class UcekAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}
