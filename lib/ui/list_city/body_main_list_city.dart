import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resik_homestay/const/color.dart';
import 'package:resik_homestay/ui/list_homestay/main_list_homestay.dart';

class BodyMainListCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Choose City Of",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Resik Outlet",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            
            SizedBox(
              height: 15.0,
            ),
         
              Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Form(
                    child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 13.0),
                    isDense: true,
                    hintText: 'Search City ...',
                    prefixIcon: Icon(Icons.search),
                  ),
                )),
              ),
          SizedBox(height: 30.0,),
            GridView.count(
                  childAspectRatio: MediaQuery.of(context).size.height / 1100,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(10, (index) {
                    return Container(
                      child: GestureDetector(
                        onTap: (){Get.to(MainListHomeStay());},
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
                                    Text('Malang',maxLines: 2,style:TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5.0,),
                                    Text('cooling city best for traveler',maxLines: 2,style:TextStyle(color: descriptionColor,fontWeight: FontWeight.w500,fontSize: 13.0)),
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

