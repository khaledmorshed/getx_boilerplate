
import 'package:flutter/material.dart';
import '../app_colors/all_colors_export.dart';
import '../extend_theme/divider_theme_extend.dart';

const dividerThemeLight = DividerThemeExtend(
  dividerPrimary: appPrimaryColor,
  dividerSecondary: appSecondaryColor,
  dividerFirst: appPrimaryColor,
  dividerSecond: appSecondaryColor,
);

const dividerThemeDark = DividerThemeExtend(
  dividerPrimary: appPrimaryColor,
  dividerSecondary: appSecondaryColor,
  dividerFirst: Color(0xefd1ce09),
  dividerSecond: Color(0xefd1ce09),
);