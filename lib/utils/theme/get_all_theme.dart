import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'extend_theme/check_box_theme_extend.dart';
import 'extend_theme/icon_theme_extend.dart';
import 'extend_theme/text_theme_extend.dart';

class GetTheme {
  //text theme
  TextThemeExtend txtTheme(){
    return Theme.of(Get.context!).extension<TextThemeExtend>()!;
  }

  //icon theme
  IconThemeExtend iconTheme(){
    return Theme.of(Get.context!).extension<IconThemeExtend>()!;
  }

  //checkBox theme
  CheckBoxThemeExtend checkBoxTheme(){
    return Theme.of(Get.context!).extension<CheckBoxThemeExtend>()!;
  }

}
