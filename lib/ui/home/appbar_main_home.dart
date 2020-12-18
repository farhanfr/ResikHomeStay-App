import 'package:flutter/material.dart';
import 'package:resik_homestay/const/color.dart';

class AppBarMainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: secondaryColor,
      elevation: 2.0,
      centerTitle: true,
      title: Text("Resik HomeStay"),
    );
  }
}