import 'package:flutter/material.dart';

import '../../app_colors/all_colors_export.dart';


class GradientBoxDecoration {
  static BoxDecoration gradientBoxDecoration(
      {Color backGroundColor = Colors.white, List<Color> colorList = const [appPrimaryColor, appWhiteColor,], bool isFractionOffset = false, AlignmentGeometry begin = Alignment.topCenter, AlignmentGeometry end = Alignment.bottomCenter,   double beingDx = 0.0, double endDx = 1.0, double borderRadius = 10, double beginDy = 1.0, double endDy = 0.0}) {
    return BoxDecoration(
      //borderRadius: BorderRadius.circular(borderRadius),
      gradient: LinearGradient(
        begin: isFractionOffset ? FractionalOffset(beingDx, beginDy) :  begin,
        end:  isFractionOffset ? FractionalOffset(endDx, endDy) : end,
        colors: colorList,
      ),
      color: backGroundColor,
    );
  }
}