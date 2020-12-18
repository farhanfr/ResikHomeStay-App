import 'package:flutter/material.dart';
import 'package:resik_homestay/ui/list_homestay/appbar_main_list_homestay.dart';
import 'package:resik_homestay/ui/list_homestay/body_main_list_homestay.dart';
import 'package:resik_homestay/ui/list_homestay/header_main_list_homestay.dart';
import 'package:resik_homestay/const/color.dart';

class MainListHomeStay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor1,
       appBar: PreferredSize(
            child: AppBarMainListHomestay(),
            preferredSize: const Size.fromHeight(50.0)),
      body: Column(
        children: [
          HeaderMainListHomeStay(),
          BodyMainListHomeStay()
      ],),
    );
  }
}