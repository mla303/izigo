import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconTextField extends StatelessWidget {
  final Widget suffixicon;
  final Widget prefixIcon;
  final String hintText2;
  final double width;
  final TextEditingController txtController;
  const CustomIconTextField(
      {Key key,
      @required this.suffixicon,
      @required this.txtController,
      @required this.hintText2,
      @required this.prefixIcon,
      @required this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      margin: EdgeInsets.only(top: 0, left: 0, right: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffEFEFF4)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            obscureText: false,
            controller: txtController,
            decoration: InputDecoration(
              suffixIcon: suffixicon,
              prefixIcon: prefixIcon,
              hintText: hintText2,
              hintStyle: TextStyle(
                  color: Color(0xffB5B5B5),
                  fontSize: 14,
                  fontFamily: 'WorkSans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              fillColor: Colors.transparent,
              filled: true,
            ),
          )),
        ],
      ),
    );
  }
}

class CustomIconTextFieldTwo extends StatelessWidget {
  final Widget suffixicon;
  final Widget prefixIcon;
  final String hintText2;
  final TextEditingController txtController;
  const CustomIconTextFieldTwo(
      {Key key,
      @required this.suffixicon,
      @required this.txtController,
      @required this.hintText2,
      @required this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      margin: EdgeInsets.only(top: 12, left: 12, right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            obscureText: false,
            controller: txtController,
            decoration: InputDecoration(
              suffixIcon: suffixicon,
              prefixIcon: prefixIcon,
              enabled: false,
              hintText: hintText2,
              hintStyle: TextStyle(
                  color: Color(0xffB5B5B5),
                  fontSize: 16,
                  fontFamily: 'WorkSans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              fillColor: Colors.transparent,
              filled: true,
            ),
          )),
        ],
      ),
    );
  }
}
