import 'package:flutter/material.dart';

const Color aWhite = Color(0xffffffff);
const Color aLightWhite = Color(0xffeff5f4);
const Color aLighterWhite = Color(0xfffcfcfc);
const Color aGray = Color(0xff9397a0);
const Color aLightGray = Color(0xffa7a7a7);
const Color aBlue = Color(0xff5474fd);
const Color aLightBlue = Color(0xff83b1ff);
const Color aLighterBlue = Color(0xffc1d4f9);
const Color aDarkBlue = Color(0xff19202d);
const Color aBlack = Color.fromARGB(0, 0, 0, 0);
const Color aBorder = Color(0xffEEEEEE);
const double borderRad = 16.0;
const double padHorizontal = 40.0;
final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRad),
  borderSide: BorderSide.none,
);

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}
