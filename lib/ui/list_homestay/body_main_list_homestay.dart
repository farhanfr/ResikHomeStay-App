import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:resik_homestay/const/color.dart';
import 'package:resik_homestay/ui/detail_homestay/main_detail_homestay.dart';

class BodyMainListHomeStay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GestureDetector(
              onTap: (){Get.to(MainDetailHomeStay());},
                          child: Container(
                height: 150.0,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                  color:whiteColor,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1
                        ,child:Container(
                          child: Center(child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                'https://wallpapercave.com/wp/wp38040.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),)) 
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        flex: 2
                        ,child:Container(
                          child: SingleChildScrollView(
                                                    child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Resik HomeStay Ijen",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 5.0,),
                                Text("Utara stadion gajayana dekat MOG",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: descriptionColor),),
                                RatingBar.builder(
                                      initialRating: 4,
                                      itemSize: 15.0,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(vertical: 5.0),
                                      itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                      onRatingUpdate: (_) {}),
                                Text("Rp.15000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0)),
                                SizedBox(height: 5.0,),
                                Text("1 Malam / 1 Kamar",style: TextStyle(fontSize: 11.0,color: descriptionColor),)
                              ],
                            ),
                          )) 
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}