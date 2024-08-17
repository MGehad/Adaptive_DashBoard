import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyleRegular12 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: calculateFontSize(size: 12),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleRegular14 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: calculateFontSize(size: 14),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleRegular16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: calculateFontSize(size: 16),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleMedium16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: calculateFontSize(size: 16),
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleSemiBold16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: calculateFontSize(size: 16),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleBold16 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: calculateFontSize(size: 16),
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleSemiBold20 = TextStyle(
    color: const Color(0xff064061),
    fontSize: calculateFontSize(size: 20),
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleSemiBold24 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: calculateFontSize(size: 24),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
  static TextStyle textStyleSemiBold18 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: calculateFontSize(size: 18),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );
}

double calculateFontSize({required double size}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = scaleFactor * size;
  double lowerLimit = size * .8;
  double upperLimit = size * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;
  if (width < 800) {
    return width / 600;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
