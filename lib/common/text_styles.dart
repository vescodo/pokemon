import 'package:flutter/material.dart';
import 'package:pokemon/common/colors.dart';

class TextStyles {
  static const String fontFamily = 'MPLUSRounded1c';
  static const FontWeight fontWeight = FontWeight.w900;
  static const FontWeight smallFontWeight = FontWeight.w700;

  static TextStyle xsmallTextStyle;
  static TextStyle smallTextStyle;

  static TextStyle regularTextStyle;

  static TextStyle largeTextStyle;

  void init(BuildContext context) {
    final _mediaQueryData = MediaQuery.of(context);
    final textScaleFactor = _mediaQueryData.textScaleFactor;

    xsmallTextStyle = TextStyle(
        fontSize: 12 / textScaleFactor,
        fontFamily: fontFamily,
        color: mainTextColor,
        decoration: TextDecoration.none,
        fontWeight: fontWeight);

    smallTextStyle = TextStyle(
        fontSize: 14 / textScaleFactor,
        fontFamily: fontFamily,
        color: mainTextColor,
        decoration: TextDecoration.none,
        fontWeight: smallFontWeight);

    regularTextStyle = TextStyle(
        fontSize: 16 / textScaleFactor,
        fontFamily: fontFamily,
        color: mainTextColor,
        decoration: TextDecoration.none,
        fontWeight: fontWeight);

    largeTextStyle = TextStyle(
        fontSize: 40 / textScaleFactor,
        fontFamily: fontFamily,
        color: mainTextColor,
        decoration: TextDecoration.none,
        fontWeight: fontWeight);
  }
}
