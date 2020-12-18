import 'package:flutter/material.dart';
import 'package:resik_homestay/const/color.dart';

class HeaderMainListHomeStay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150.0,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0),
        )
      ),
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.0),
            Text("Beautiful Place to live",style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,letterSpacing: 2.0)),
            SizedBox(height: 5.0),
            Text("Find a homestay you want to spend time",style: TextStyle(color: whiteColor,fontWeight: FontWeight.w500)),
            SizedBox(height: 15.0),
             Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Form(
                    child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 13.0),
                    isDense: true,
                    hintText: 'Search Homestay ...',
                    prefixIcon: Icon(Icons.search),
                  ),
                )),
              ),
          ],
        ),
      ),
    );
  }
}