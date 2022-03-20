import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {

  final Widget widget;
  final EdgeInsets margin;
  final double height;
  final double width;
  final Function(BuildContext context) onTap;

  const CardComponent({ Key key, this.widget, this.margin, this.height, this.width, this.onTap, })
      : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
    child: Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(191, 192, 202, .15),
              // color: Colors.grey,
              offset: Offset.fromDirection(2, 10),
              blurRadius: 10,
            )
          ]
      ),
      child: widget,
    ),
    onTap: () => onTap(context),
  );
}