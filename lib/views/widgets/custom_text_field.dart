import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText2;
  final TextEditingController txtController;
  final bool obscuretext,enable;
  final TextInputType textInputType;
  final IconButton iconButton;
  final Function ontap;
  const CustomTextField({
    Key key,
    @required this.txtController,
    @required this.hintText2,
    @required this.obscuretext,
    @required this.textInputType,
    @required this.iconButton,
    @required this.enable,
    @required this.ontap,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 8, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
               // readOnly: enable,
            obscureText: obscuretext,
            controller: txtController,
            onTap: ontap,
            keyboardType: textInputType,
            decoration: InputDecoration(
              hintText: hintText2,
              suffixIcon: iconButton,
              hintStyle: TextStyle(
                color: Color(0xffC9C9C9),
                fontSize: 16,
                fontFamily: 'SanFrancisco',
              ),
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
