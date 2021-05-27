import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:izigo/controllers/accomodation_controller.dart';
import 'package:izigo/controllers/nearByServicesTab.dart';
import 'package:izigo/controllers/services_controller.dart';
import 'package:izigo/models/services_model.dart';
import 'package:izigo/views/widgets/appBar.dart';
import 'package:izigo/views/widgets/colors.dart';
import 'package:izigo/views/widgets/custom_circle.dart';
import 'package:izigo/views/widgets/custom_icon_text_field.dart';
import 'package:izigo/views/widgets/home_tile.dart';

import '../filter_page.dart';

class homepage extends StatelessWidget {


  final servicescontroller = Get.put(ServicesController());
  final tabController = Get.put(NearByServicesTabController());
  final accomodController = Get.put(AccomodationController());

  @override
  Widget build(BuildContext context) {

    int columnCount = 2;

    final primaryColor = Theme.of(context).primaryColor;
    final textstyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: homeAppBar(
        leading: SizedBox(),
        action: SizedBox(),
        height: 80,
        title: Image.asset("assets/images/logo.png",scale: 1.8,),
        centerTitle: true
      ),

      body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            // height: Get.height,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, John Smith',
                  style: textstyle.bodyText1,),
                Text('Where are you going next?',
                  style: textstyle.bodyText1,),

                SizedBox(height: Get.height/60,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconTextField(
                      hintText2: "What are you looking for?",
                      prefixIcon: Icon(Icons.search),
                      width: Get.width/1.3,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(FilterPage()),
                      child: myCustomCircleAvator(
                        width: 45,
                        height: 45,
                        bgColor: mainColor1,
                        colr: mainColor1,
                        data: Image.asset("assets/icons/filter.png"),
                      ),
                    )
                  ],
                ),
                SizedBox(height: Get.height/60,),
                Text('We\'re providing Services',
                  style: textstyle.bodyText1,),

            SizedBox(height: 5,),
            Container(
              color: Colors.white,
              width: Get.width,
              height: Get.height/6,
              child: AnimationLimiter(
                child: GridView.count(

                  childAspectRatio: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  physics:
                  BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  padding: EdgeInsets.all(Get.width / 60),
                  crossAxisCount: columnCount,
                  children: List.generate(
                  servicescontroller.Slist.length,
                        (int index,) {
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        duration: Duration(milliseconds: 500),
                        columnCount: columnCount,
                        child: ScaleAnimation(
                          duration: Duration(milliseconds: 900),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: FadeInAnimation(
                            child: servicesContainer(
                              servicescontroller.Slist[index]
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
                SizedBox(height: 15,),
                Text('Near by Services',
                  style: textstyle.headline6,),
                TabBar(
                  labelStyle: TextStyle(fontSize: 11),
                  indicatorColor: mainColor1,
                  labelColor: mainColor1,
                  unselectedLabelColor: Colors.grey,
                  labelPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  isScrollable: true,
                  controller: tabController.tabController,
                  tabs: [
                    Text("Accomodation"),
                    Text("Sleeping at home "),
                    Text("Organized Stay"),
                    Text("Holiday colony"),
                  ],),
                Container(
                  height: Get.height/2.8,
                    child: TabBarView(
                      controller: tabController.tabController,
                      children: [
                        AnimationLimiter(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                            padding: EdgeInsets.all(Get.width / 30),
                            itemCount: accomodController.listofhotels.length,
                            itemBuilder: (BuildContext context, int index){
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  delay: Duration(milliseconds: 100),
                                  child: SlideAnimation(
                                    duration: Duration(milliseconds: 2500),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child: FadeInAnimation(
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      duration: Duration(milliseconds: 2500),
                                      child: NearByServicesTile(
                                        accomodationModel: accomodController.listofhotels[index],

                                      )
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),

                        // here can be repalced the "sleep at home" list
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                          padding: EdgeInsets.all(Get.width / 30),
                          itemCount: accomodController.listofhotels.length,
                          itemBuilder: (BuildContext context, int index){
                              return NearByServicesTile(
                                accomodationModel: accomodController.listofhotels[index],
                              );
                            },
                          ),

                        // here can be repalced the "organized stay" list
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                          padding: EdgeInsets.all(Get.width / 30),
                          itemCount: accomodController.listofhotels.length,
                          itemBuilder: (BuildContext context, int index){
                            return NearByServicesTile(
                              accomodationModel: accomodController.listofhotels[index],
                            );
                          },
                        ),

                        // here can be repalced the "holiday colony" list
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                          padding: EdgeInsets.all(Get.width / 30),
                          itemCount: accomodController.listofhotels.length,
                          itemBuilder: (BuildContext context, int index){
                            return NearByServicesTile(
                              accomodationModel: accomodController.listofhotels[index],
                            );
                          },
                        ),
                      ],
                    )),



                Text('Accomodation',
                  style: textstyle.headline6,),


                Container(
                  // color: Colors.yellow,
                  height: Get.height/5,
                  width: Get.width,
                  child: AnimationLimiter(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      padding: EdgeInsets.all(Get.width / 30),
                      itemCount: accomodController.accomodation.length,
                      itemBuilder: (BuildContext context, int index){
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: Duration(milliseconds: 100),
                          child: SlideAnimation(
                            duration: Duration(milliseconds: 2500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: FadeInAnimation(
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: Duration(milliseconds: 2500),
                                child: accomodationTile(
                                  accomodationModel: accomodController.accomodation[index],

                                )
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),


                SizedBox(height: 10,),
                Text('Holiday colony',
                  style: textstyle.headline6,),

                //herre you can change the list accourding to the data
                Container(
                  // color: Colors.yellow,
                  height: Get.height/5,
                  width: Get.width,
                  child: AnimationLimiter(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      padding: EdgeInsets.all(Get.width / 30),
                      itemCount: accomodController.accomodation.length,
                      itemBuilder: (BuildContext context, int index){
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: Duration(milliseconds: 100),
                          child: SlideAnimation(
                            duration: Duration(milliseconds: 2500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: FadeInAnimation(
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: Duration(milliseconds: 2500),
                                child: accomodationTile(
                                  accomodationModel: accomodController.accomodation[index],

                                )
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),


                SizedBox(height: 10,),
                Text('Sleeping at home ',
                  style: textstyle.headline6,),
                Container(
                  height: Get.height/3,
                  width: Get.width,
                  child: AnimationLimiter(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      padding: EdgeInsets.all(Get.width / 30),
                      itemCount: accomodController.listofhotels.length,
                      itemBuilder: (BuildContext context, int index){
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: Duration(milliseconds: 100),
                          child: SlideAnimation(
                            duration: Duration(milliseconds: 2500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: FadeInAnimation(
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: Duration(milliseconds: 2500),
                                child: NearByServicesTile(
                                  accomodationModel: accomodController.listofhotels[index],

                                )
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),


                SizedBox(height: 10,),
                Text('Organized Stay ',
                  style: textstyle.headline6,),
                //herre you can change the list accourding to the data
                Container(
                  // color: Colors.yellow,
                  height: Get.height/5,
                  width: Get.width,
                  child: AnimationLimiter(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      padding: EdgeInsets.all(Get.width / 30),
                      itemCount: accomodController.accomodation.length,
                      itemBuilder: (BuildContext context, int index){
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: Duration(milliseconds: 100),
                          child: SlideAnimation(
                            duration: Duration(milliseconds: 2500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: FadeInAnimation(
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: Duration(milliseconds: 2500),
                                child: accomodationTile(
                                  accomodationModel: accomodController.accomodation[index],

                                )
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      );
  }
}

class servicesContainer extends StatefulWidget {
  ServicesModel model;
servicesContainer(this.model);

  @override
  _servicesContainerState createState() => _servicesContainerState();
}

class _servicesContainerState extends State<servicesContainer> {

  final servicescontroller = Get.put(ServicesController());

  @override
  Widget build(BuildContext context) {
    double _w = Get.width;
    return Container(
      decoration: BoxDecoration(
        color: mainColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 40,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(widget.model.img,scale: 1.6,),
            SizedBox(width: 5,),
            Text(widget.model.title,style: TextStyle(color: Colors.white),)

          ],
        ),
      ),
    );
  }
}

