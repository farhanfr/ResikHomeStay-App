import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:resik_homestay/const/color.dart';
import 'package:resik_homestay/resources/image_resources.dart';
import 'package:resik_homestay/ui/list_city/main_list_city.dart';

class BodyHome extends StatelessWidget {
  final List<Widget> imageSliders = ImageResources()
      .loadImage()
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${ImageResources().loadImage().indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: whiteColor,
      width: screenSize.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text("Promotion",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900)),
            ),
            SizedBox(
                height: 200.0,
                width: screenSize.width,
                child: Carousel(
                  images: [
                    NetworkImage(
                        'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                    NetworkImage(
                        'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 5.0,
                  // dotBgColor: Colors.purple.withOpacity(0.5),
                  borderRadius: true,
                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Resik Outlet",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w900)),
                  GestureDetector(
                    onTap: (){Get.to(MainListCity());},
                                      child: Text("See all",
                        style: TextStyle(
                            color: redColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900)),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Great Deal",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w900)),
                  // Text("See all",
                  //     style: TextStyle(
                  //         color: redColor,
                  //         fontSize: 16.0,
                  //         fontWeight: FontWeight.w900)),
                ],
              ),
            ),
            GridView.count(
              childAspectRatio: MediaQuery.of(context).size.height / 1300,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Container(
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 7,
                          child: Image.network(
                            'https://wallpapercave.com/wp/wp38040.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ijen Dekat Perpustakaan Umum Malang',
                                  maxLines: 2,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              RatingBar.builder(
                                  initialRating: 4,
                                  itemSize: 15.0,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(vertical: 8.0),
                                  itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                  onRatingUpdate: (_) {}),
                              Text("Rp.12000",style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5.0,),
                              Text("1 Malam / 1 Kamar",style: TextStyle(fontSize: 11.0,color: descriptionColor),)
                            ],
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
