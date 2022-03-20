import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {

  static const sizeLarge = 36.0;
  static const sizeMedium = 28.0;
  static const sizeSmall = 14.0;

  static const fontLight = 'gilroy light';
  static const fontBold = 'gilroy extrabold';

  final String text;
  final double size;
  final String family;
  final EdgeInsets padding;
  final Color color;

  const TextComponent({
    Key key,
    this.text,
    this.size = sizeSmall,
    this.family = fontLight,
    this.padding,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: padding == null ? EdgeInsets.all(0) : padding,
        child: Text(text, style: TextStyle(
            fontFamily: family, fontSize: size, color: color == null ? Colors.black : color),
        ));
  }
}