import 'package:flutter/material.dart';
import 'package:resik_homestay/const/color.dart';
import 'package:resik_homestay/ui/home/appbar_main_home.dart';
import 'package:resik_homestay/ui/home/body_home.dart';
import 'package:resik_homestay/ui/home/header_home.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: primaryColor,
        appBar: PreferredSize(
            child: AppBarMainHome(),
            preferredSize: const Size.fromHeight(50.0)),
        body: ListView(
          children: [
            HeaderHome(),
            BodyHome()
          ],
        ));
  }
}
