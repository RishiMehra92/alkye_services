import 'package:flutter/material.dart';

class StrawfordText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final Color? decorationColor;
  final String? fontFamily;
  final FontWeight? weight;
  final TextAlign? align;
  final double? height;
  final double? decorationThickness;
  final int? maxLine;
  final TextDecoration? decoration;
  final TextOverflow? overflow;

  const StrawfordText(
      {Key? key,
      this.text,
      this.size,
      this.color,
      this.weight,
      this.fontFamily,
      this.align,
      this.maxLine,
      this.overflow,
      this.decoration,
      this.decorationThickness,
      this.decorationColor,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: align,
      maxLines: maxLine,
      overflow: overflow,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal,
          fontFamily: "Strawford",
          fontStyle: FontStyle.normal,
          decoration: decoration,
          // decoration: TextDecoration.lineThrough,
          decorationColor: decorationColor ?? Colors.transparent,
          decorationThickness: decorationThickness ?? 0.0,
          height: height),
    );
  }
}
