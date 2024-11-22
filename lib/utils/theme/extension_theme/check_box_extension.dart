import 'package:flutter/material.dart';
import '../app_colors/all_colors_export.dart';
import '../extend_theme/check_box_theme_extend.dart';

// CheckBox Light Theme Extension
final checkBoxThemeLightExtension = CheckBoxThemeExtend(
  activeCheckBorderColorList: const [
    //active color, check color, boarder color(primary, white, black)--0
    [appPrimaryColor, whiteOnly, blackOnly],
    [appSecondaryColor, Color(0xff008080), Color(0xff000000)],
    [appWhiteColor, Color(0xffffffff), Color(0xff000000)],
  ],
);

// CheckBox Dark Theme Extension
final checkBoxThemeDarkExtension = CheckBoxThemeExtend(
  activeCheckBorderColorList: const[
    //active color, check color, boarder color(primary, white, black)--0
    [whiteOnly, blackOnly, whiteOnly],
    [containerBackGroundColorDark, containerBoarderColorDark, Color(0xffc33434)],
    [containerBackGroundColorDark, containerBoarderColorDark, Color(0xff000000)],
  ],
);
