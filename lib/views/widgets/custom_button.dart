import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key key,
      @required this.lable,
      @required this.onPress,
      @required this.color,
      @required this.radius,
      @required this.borderColor,
      @required this.lableColor,
      @required this.buttonHeight,
      })
      : super(key: key);

  final String lable;
  final Function onPress;
  final Color color;
  final double radius,buttonHeight;
  final Color borderColor,lableColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: buttonHeight,

        color: color,
        padding: EdgeInsets.only(top: 16, bottom: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: borderColor,
            )),
        child: Center(
          child: Text(lable,
              style: TextStyle(
                fontFamily: 'Candara',
                color: lableColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              )),
        ),
        onPressed: onPress);
  }
}



class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {Key key,
      @required this.lable,
      @required this.onPress,
      @required this.color,
      @required this.radius,
      @required this.borderColor,
      @required this.lableColor,
      @required this.buttonHeight,
      @required this.buttonWidth,
      })
      : super(key: key);

  final String lable;
  final Function onPress;
  final Color color;
  final double radius,buttonHeight,buttonWidth;
  final Color borderColor,lableColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: buttonHeight,
        minWidth: buttonWidth,

        color: color,
        padding: EdgeInsets.only(top: 16, bottom: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: borderColor,
            )),
        child: Center(
          child: Text(lable,
              style: TextStyle(
                fontFamily: 'Candara',
                color: lableColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              )),
        ),
        onPressed: onPress);
  }
}
