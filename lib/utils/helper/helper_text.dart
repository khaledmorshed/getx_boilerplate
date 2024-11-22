
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trivium_quiz_application/utils/theme/extend_theme/text_theme_extend.dart';

import '../app_colors/all_colors_export.dart';

class HelperText{

   List<Color> colorizeColors = [
    Theme.of(Get.context!).extension<TextThemeExtend>()!.txtColorBlack!,
    appRedColor,
    appBlueColor,
  ];

   TextStyle colorizeTextStyle = const TextStyle(
      fontSize: 14,
      fontFamily: 'Horizon',
      fontWeight: FontWeight.w600
  );



}