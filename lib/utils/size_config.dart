import 'package:flutter/material.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;

  void init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    if (mediaQuery.orientation == Orientation.portrait) {
      _screenHeight = mediaQuery.size.height;
      _screenWidth = mediaQuery.size.width;
    } else {
      _screenHeight = mediaQuery.size.width;
      _screenWidth = mediaQuery.size.height;
    }

    _blockSizeHorizontal = (_screenWidth) / 100;
    _blockSizeVertical = (_screenHeight) / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;

    print(textMultiplier);
  }
}
