
import 'package:flutter/material.dart';
import '../app_colors/all_colors_export.dart';
import '../extend_theme/text_button_theme_extend.dart';

//light
final textButtonThemeLightExtension =  TextButtonThemeExtend(
    disabledColors: [
      buttonDisableColorLightPrimary,
      buttonDisableColorLightSecondary,
      buttonDisableColorLightFirst,
      buttonDisableColorLightSecond,
    ],
    textButtonStyles: [
      TextButton.styleFrom(
        backgroundColor: appPrimaryColor,
        side: const BorderSide(color: appPrimaryColor),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: appPrimaryColor, width: 0),
        ),
      ),
      TextButton.styleFrom(
        backgroundColor: appSecondaryColor,
        side: const BorderSide(color: appSecondaryColor),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: appSecondaryColor, width: 0),
        ),
      ),
      TextButton.styleFrom(
        backgroundColor: appRedColor,
        side: const BorderSide(color: appRedColor),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: appRedColor, width: 0),
        ),
      ),
      TextButton.styleFrom(
        backgroundColor: appPrimaryColor,
        side: const BorderSide(color: appPrimaryColor),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: appPrimaryColor, width: 0),
        ),
      ),
    ]
);

//dark
final textButtonThemeDarkExtension = TextButtonThemeExtend(
    disabledColors: [
      buttonDisableColorDarkPrimary,
      buttonDisableColorDarkSecondary,
      buttonDisableColorDarkFirst,
      buttonDisableColorDarkSecond,
    ],
    textButtonStyles: [
      TextButton.styleFrom(
        backgroundColor: buttonColorDarkPrimary,
        side: const BorderSide(color: buttonColorDarkPrimary),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: buttonColorDarkPrimary, width: 0),
        ),
      ),
      TextButton.styleFrom(
        backgroundColor: buttonColorDarkSecondary,
        side: const BorderSide(color: buttonColorDarkSecondary),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: buttonColorDarkSecondary, width: 0),
        ),
      ),
      TextButton.styleFrom(
        backgroundColor: buttonColorDarkFirst,
        side: const BorderSide(color: buttonColorDarkFirst),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: buttonColorDarkFirst, width: 0),
        ),
      ),
      TextButton.styleFrom(
        backgroundColor: buttonColorDarkSecond,
        side: const BorderSide(color: buttonColorDarkSecond),
        textStyle: const TextStyle(
          color: whiteOnly,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: buttonColorDarkSecond, width: 0),
        ),
      ),
    ]
);