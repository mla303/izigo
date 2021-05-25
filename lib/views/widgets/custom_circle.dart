import 'package:flutter/material.dart';

class myCustomCircleAvator extends StatelessWidget {
  const myCustomCircleAvator({Key key,
    @required this.width,
    @required this.height,
    @required this.data,
    @required this.colr,
    @required this.bgColor,

  })
      : super(key: key);

  final double width;
  final double height;
  final Widget data;
  final Color colr,bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: new BoxDecoration(
        color: bgColor,
        borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
        border: new Border.all(
          color: colr,
          width: 1.0,
        ),
      ),
      child: data,
    );
  }
}

class CustomCircleAvator extends StatelessWidget {
  const CustomCircleAvator({Key key,
    @required this.width,
    @required this.height,
    @required this.data,
    @required this.colr,
    @required this.bgColor,

  })
      : super(key: key);

  final double width;
  final double height;
  final Widget data;
  final Color colr,bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: new BoxDecoration(
        color: bgColor,
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
        border: new Border.all(
          color: colr,
          width: 1.0,
        ),
      ),
      child: data,
    );
  }
}
