import 'package:flutter/material.dart';

const double regularMargin = 40.0;
const double smallMargin = regularMargin / 2;
const double rowMargin = regularMargin / 4;
const double bottomMenuHeight = regularMargin * 3;

class Dimen {
  static double screenWidth;
  static double screenHeight;

  void init(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height - statusBarHeight;
  }
}
