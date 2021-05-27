import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/controllers/custom_drop_down_controller.dart';

class CustomDropDown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> dropdownMenuItemList;
  final ValueChanged<T> onChanged;
  final T value;
  final bool isEnabled;
  final String hinttext;

  CustomDropDown({this.dropdownMenuItemList,this.onChanged,this.value,this.isEnabled,this.hinttext});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // margin: EdgeInsets.only(h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: Text(hinttext),
            isExpanded: true,
            itemHeight: 50.0,
            style: TextStyle(
                fontSize: 15.0,
                color: isEnabled ? Colors.black : Colors.grey[700]),
            items: dropdownMenuItemList,
            onChanged: onChanged,
            value: value,
          ),
        ),
      ),
    );
  }
}

