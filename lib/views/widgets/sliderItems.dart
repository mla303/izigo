
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/controllers/onBoarding_controllerr.dart';
import 'package:izigo/models/onboarding_model.dart';

class SlideItem extends StatefulWidget {

  onBoardingModel onboarding;

  SlideItem(this.onboarding);

  @override
  _SlideItemState createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(widget.onboarding.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          widget.onboarding.title,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
         widget.onboarding.description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}