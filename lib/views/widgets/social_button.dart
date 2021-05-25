import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String lable;
  final Function onPress;
  final String iconPath;
  const SocialButton({
    Key key,
    @required this.lable,
    @required this.onPress,
    @required this.iconPath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      // height: buttonHeight,
      padding: EdgeInsets.only(top: 16, bottom: 16),
      shape: RoundedRectangleBorder(
          side: BorderSide(color:Color(0xffEEEEEE),),
          borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 24,
              height: 24,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              lable,
            ),
          ],
        ),
      ),
      onPressed: onPress,
    );
  }
}
