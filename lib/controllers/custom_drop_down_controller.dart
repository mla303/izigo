import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/models/custom_drop_down_model.dart';

class CustomDropdownController extends GetxController {

  List<CustomDropDownModel> countryList = [
    CustomDropDownModel(title: 'Pudding',),
    CustomDropDownModel(title: 'Frozen Yogurt', ),
    CustomDropDownModel(title: 'Chocolate Milk',),
  ];
}