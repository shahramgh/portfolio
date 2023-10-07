import 'package:flutter/material.dart';

class AppSize {
  var _context;
  late double _screenHeight;
  late double _screenWidth;

  AppSize(this._context) {
    _screenHeight = MediaQuery.of(_context).size.height;
    _screenWidth = MediaQuery.of(_context).size.width;
  }

  double scaledHeight(double value) {
    return value * _screenHeight / 100;
  }

  double scaledWidth(double value) {
    return value * _screenWidth / 100;
  }

  static MediaQueryData queryDAta(BuildContext context) {
    return MediaQuery.of(context);
  }

  static Size size(BuildContext context) {
    return queryDAta(context).size;
  }

  static double width(BuildContext context) {
    return size(context).width;
  }

  static double height(BuildContext context) {
    return size(context).height;
  }

  static Orientation orientation(BuildContext context) {
    return queryDAta(context).orientation;
  }
}
