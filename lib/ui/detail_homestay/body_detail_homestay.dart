import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:resik_homestay/const/color.dart';

class BodyDetailHomeStay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 300.0,
          pinned: true,
          backgroundColor: primaryColor,
          flexibleSpace: FlexibleSpaceBar(
              title: Text('ResikHomestay depan Stadion Gajayana',
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              titlePadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              background: Image.network(
                'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.cover,
              )),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                    child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.location_city,
                        color: primaryColor,
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                          "Jl.Panglima Sudirman 14, Malang, Kel Kedungkandang,Kec Landungsari"),
                    )
                  ],
                )),
              ),
              Divider(
                color: descriptionColor,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1 Malam/kamar"),
                      Text(
                        "Rp.15000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Divider(
                color: descriptionColor,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                            initialRating: 4,
                            itemSize: 20.0,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(vertical: 5.0),
                            itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                            onRatingUpdate: (_) {}),
                        Row(
                          children: [
                            Text(
                              "1200 Reviews",
                              style: TextStyle(color: primaryColor),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18.0,
                              color: Colors.grey[400],
                            )
                          ],
                        )
                      ])),
              Divider(
                color: descriptionColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "Features",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              // color: primaryColor,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.wifi,
                                    size: 24.0,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "TV",
                                    style: TextStyle(color: blackColor),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              // color: primaryColor,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.tv,
                                    size: 24.0,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Breakfast",
                                    style: TextStyle(color: blackColor),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              // color: primaryColor,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.security,
                                    size: 24.0,
                                    color: primaryColor,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Wifi",
                                    style: TextStyle(color: blackColor),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(children: [
                      Expanded(
                          flex: 4,
                          child: Container(
                            // color: primaryColor,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.ac_unit,
                                  size: 24.0,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "AC",
                                  style: TextStyle(color: blackColor),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            // color: primaryColor,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.dashboard,
                                  size: 24.0,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "LAN",
                                  style: TextStyle(color: blackColor),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            // color: primaryColor,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.food_bank,
                                  size: 24.0,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Hot Water",
                                  style: TextStyle(color: blackColor),
                                ),
                              ],
                            ),
                          )),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 30.0,),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          color: primaryColor,
                          textColor: whiteColor,
                          child: Text("BOOKING NOW"),
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
