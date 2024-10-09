import 'dart:math';
import 'package:flutter/material.dart';

class Responsive {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

// from small to big screens
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width > 320;
  }

// from small to big screens
  static bool isBigMobile(BuildContext context) {
    return MediaQuery.of(context).size.width > 395;
  }

// from small to big screens
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 460;
  }

  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 1.3, int screenWidth = 800}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / screenWidth) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }

  static Size size(context) {
    return MediaQuery.of(context).size;
  }

  static Orientation orientation(context) {
    return MediaQuery.of(context).orientation;
  }
}
