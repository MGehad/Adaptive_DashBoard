import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyleRegular12(BuildContext context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: calculateFontSize(size: 12, context),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleRegular14(BuildContext context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: calculateFontSize(size: 14, context),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleRegular16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: calculateFontSize(size: 16, context),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleMedium16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: calculateFontSize(size: 16, context),
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleSemiBold16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: calculateFontSize(size: 16, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleBold16(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: calculateFontSize(size: 16, context),
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleSemiBold20(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: calculateFontSize(size: 20, context),
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleSemiBold24(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: calculateFontSize(size: 24, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      );

  static TextStyle textStyleSemiBold18(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: calculateFontSize(size: 18, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      );
}

double calculateFontSize(BuildContext context, {required double size}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * size;
  double lowerLimit = size * .8;
  double upperLimit = size * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 600;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
