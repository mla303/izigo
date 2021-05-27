// import 'dart:html';

import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/controllers/custom_drop_down_controller.dart';
import 'package:izigo/controllers/filter_organized_stay_controller.dart';
import 'package:izigo/models/custom_drop_down_model.dart';
import 'package:izigo/models/filter_organized_stay_model.dart';
import 'package:izigo/views/widgets/appBar.dart';
import 'package:izigo/views/widgets/colors.dart';
import 'package:izigo/views/widgets/custom_dropDown.dart';
import 'package:izigo/views/widgets/rangeSlider.dart';

class FilterPage extends StatelessWidget {


  CustomDropDownModel _customDropDownModel = CustomDropDownModel();
  CustomDropdownController dropdownController = Get.put(CustomDropdownController());

  // bool isSelected = false;
  @override
  Widget build(BuildContext context) {



    final textstyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: myappBar(
        title: "Filter",
        centerTitle: true,
        height: 70,
        action: Row(
          children: [
            Text("Apply",
              style: TextStyle(color: mainColor1),),
            SizedBox(width: 10,)
          ],
        ),
        leading: Center(
          child: Text("Cancel",
          style: TextStyle(color: mainColor1),),
        ),
      ),

      body: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What are you looking for?',
              style: textstyle.bodyText1,),

            SizedBox(height: Get.height/60,),
            Text('Select Organized Stay',
              style: textstyle.bodyText1,),

            GetBuilder<OrganizedStayController>(
                init: OrganizedStayController(),
                builder: (controler) {
                  return Container(
                    height: Get.height/20,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: controler.datalist.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(left: 5, top: 0),
                            child: Row(
                              children: [
                                CircularCheckBox(
                                    activeColor: mainColor1,
                                    checkColor: Colors.white,
                                    value: controler.isSelected,
                                    onChanged: (value) {
                                      controler.datalist.forEach((val) {
                                        val.isSelected = false;
                                        controler.update();
                                      });
                                      controler.datalist[index].isSelected = true;
                                      controler.isSelected =  controler.datalist[index].isSelected;
                                      controler.update();
                                      // controler.isSelected.value = value;
                                      // print('=====');
                                      // controler.changeStatus(controler.datalist[index].title, controler.isSelected.value);
                                    }),
                                Text(controler.datalist[index].title),
                              ],
                            ),
                          );

                          //   OrganizedStayTile(
                          //   onPress: (value) {
                          //     controler.changeStatus(
                          //         controler.datalist[index].title, value);
                          //   },
                          //   model: controler.datalist[index],
                          // );
                        }),
                  );
                }),


            // myRnageSlider(),

            CustomDropDown(
              hinttext: "Select Country",
              value: _customDropDownModel,
              dropdownMenuItemList: [],

            )

        // DropdownButton<String>(
        //   value: dropdownValue,
        //   icon: Icon(Icons.arrow_downward),
        //   iconSize: 24,
        //   elevation: 16,
        //   style: TextStyle(color: Colors.deepPurple),
        //   underline: Container(
        //     height: 2,
        //
        //     color: Colors.deepPurpleAccent,
        //   ),
        //   onChanged: (String newValue) {
        //     setState(() {
        //       dropdownValue = newValue;
        //     });
        //   },
        //   items: <String>['One', 'Two', 'Free', 'Four']
        //       .map<DropdownMenuItem<String>>((String value) {
        //     return DropdownMenuItem<String>(
        //       value: value,
        //       child: Text(value),
        //     );
        //   }).toList(),
        // ),


          ],
        ),
      ),
    );
  }
}


class OrganizedStayTile extends StatefulWidget {


  OrganizedStayModel model;
  ValueChanged onPress;

  OrganizedStayTile({this.model, this.onPress});

  @override
  _OrganizedStayTileState createState() => _OrganizedStayTileState();
}

class _OrganizedStayTileState extends State<OrganizedStayTile> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 0),
      child: Row(
        children: [
          CircularCheckBox(
              activeColor: mainColor1,
              checkColor: Colors.white,
              value: isSelected,
              onChanged: (value) {
                isSelected = value;
                print('=====');
                setState(() {
                  widget.onPress(value);
                });
              }),
          // Text(widget.model.title),
        ],
      ),
    );
  }
}



