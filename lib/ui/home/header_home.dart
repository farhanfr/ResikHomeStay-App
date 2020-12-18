import 'package:flutter/material.dart';
import 'package:resik_homestay/const/color.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width:screenSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/header.jpg"),
          fit: BoxFit.fitWidth
        )
      ),
      height: 200.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Form(child:TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 13.0),
                  isDense: true,
                  hintText: 'Search ResikHomestay ...',
                  prefixIcon: Icon(Icons.search),
                ),
              )),
            ),
          )
        ],
      )
    );
  }
}