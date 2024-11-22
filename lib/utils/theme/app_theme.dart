import 'package:flutter/material.dart';
import 'app_colors/all_colors_export.dart';
import 'extension_theme/card_extension.dart';
import 'extension_theme/check_box_extension.dart';
import 'extension_theme/container_extension.dart';
import 'extension_theme/divider_extension.dart';
import 'extension_theme/elevated_button_extension.dart';
import 'extension_theme/icon_extension.dart';
import 'extension_theme/text_button_extension.dart';
import 'extension_theme/text_extension.dart';
import 'extension_theme/text_form_feild_extension.dart';

class AppTheme{

  //light theme
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: whiteOnly,
      primaryColor:  appPrimaryColor,
      primaryColorLight: appPrimaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: appPrimaryColor,
        iconTheme: IconThemeData(
          color: whiteOnly,
        ),
      ),
      hintColor: hintColor,
      highlightColor: appSecondaryColor,
      snackBarTheme: const SnackBarThemeData(
          backgroundColor: appPrimaryColor
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
          color: appPrimaryColor
      ),
      extensions: [
        textThemeLightExtension,
        textFormFieldThemeLightExtension,
        containerThemeLightExtension,
        iconThemeLightExtension,
        elevatedButtonThemeLightExtension,
        textButtonThemeLightExtension,
        dividerThemeLight,
        checkBoxThemeLightExtension,
      ]
  );
  
  
  //dark theme
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: scaffoldBackGroundColorDark,
      primaryColor:  appPrimaryDarkColor,
      primaryColorLight: appPrimaryDarkColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: appPrimaryDarkColor,
        iconTheme: IconThemeData(
          color: whiteOnly,
        ),
      ),
      hintColor: hintColor,
      highlightColor: appSecondaryColor,
      snackBarTheme: const SnackBarThemeData(
          backgroundColor: appPrimaryDarkColor
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: appPrimaryDarkColor
      ),
      extensions: [
        textThemeDarkExtension,
        textFormFieldThemeDarkExtension,
        containerThemeDarkExtension,
        iconThemDarkExtension,
        cardThemeDarkExtension,
        elevatedButtonThemeDarkExtension,
        textButtonThemeDarkExtension,
        dividerThemeDark,
        checkBoxThemeDarkExtension,
      ]
  );
  

}