import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget myRnageSlider() {
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels =RangeLabels('1', "100");
  return RangeSlider(
      divisions: 5,
      activeColor: Colors.red[700],
      inactiveColor: Colors.red[300],
      min: 1,
      max: 100,
      values: values,
      labels: labels,
      onChanged: (value){
        print("START: ${value.start}, End: ${value.end}");
        setState(() {
          values =value;
          labels =RangeLabels("${value.start.toInt().toString()}\$", "${value.start.toInt().toString()}\$");
        });
      }
  );
}

void setState(Null Function() param0) {
}