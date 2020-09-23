import 'package:flutter/material.dart';

// Pallete:---------------------------------------------------------------------

const Color black = Color.fromRGBO(0, 0, 0, 1);
const Color white = Color.fromRGBO(255, 255, 255, 1);
const Color red = Color.fromRGBO(214, 43, 42, 1);
const Color greyDark = Color.fromRGBO(20, 20, 20, 1);
const Color transparent = Color.fromRGBO(255, 255, 255, 0);

//
// App
//

// Main:------------------------------------------------------------------------

const Color primary = black;
const Color secondary = white;
const Color background = black;

// Text:------------------------------------------------------------------------

const Color mainTextColor = white;

// Elements:--------------------------------------------------------------------

const Color indicator = red;

Color pokemonBackgroundColor(String type) {
  if (type == null) {
    return Color(0xfff79496);
  }
  type = type.toLowerCase();
  return type.contains('grass')
      ? Color.fromRGBO(72, 208, 176, 1)
      : type.contains('water')
          ? Color.fromRGBO(117, 187, 251, 1)
          : type.contains('rock')
              ? Color(0xffbbc7d1)
              : type.contains('bug')
                  ? Color(0xff4bcfb2)
                  : type.contains('normal')
                      ? Color(0xff9AB8AC)
                      : type.contains('poison')
                          ? Color(0xff094be8)
                          : type.contains('electric')
                              ? Color(0xffe8dd09)
                              : type.contains('ground')
                                  ? Color.fromRGBO(255, 216, 111, 1)
                                  : type.contains('ice')
                                      ? Color(0xff1bcfe3)
                                      : type.contains('dark')
                                          ? Color(0xff9bbfbf)
                                          : type.contains('fairy')
                                              ? Color(0xff784abd)
                                              : type.contains('psychic')
                                                  ? Color(0xffbc6ee0)
                                                  : type.contains('fighting')
                                                      ? Color(0xff72ab22)
                                                      : type.contains('ghost')
                                                          ? Color(0xff42206e)
                                                          : Color.fromRGBO(
                                                              251, 108, 108, 1);
}
