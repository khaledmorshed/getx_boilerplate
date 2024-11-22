
import 'package:flutter/material.dart';

import '../app_colors/all_colors_export.dart';
import '../extend_theme/elevated_button_theme_extend.dart';

final elevatedButtonThemeLightExtension =  ElevatedButtonThemeExtend(
  disabledColorPrimary: buttonDisableColorLightPrimary,
  disabledColorSecondary: buttonDisableColorLightSecondary,
  disabledColorFirst: buttonDisableColorLightFirst,
  disabledColorSecond: buttonDisableColorLightSecond,
  elevatedButtonStylePrimary: ElevatedButton.styleFrom(
    backgroundColor: buttonColorLightPrimary,
    side: const BorderSide(color: buttonColorLightPrimary),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: buttonColorLightPrimary, width: 0),
    ),
  ),
  elevatedButtonStyleSecondary: ElevatedButton.styleFrom(
    backgroundColor: buttonColorLightSecondary,
    side: const BorderSide(color: buttonColorLightSecondary),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: buttonColorLightSecondary, width: 0),
    ),
  ),
  elevatedButtonStyleFirst: ElevatedButton.styleFrom(
    backgroundColor: buttonColorLightFirst,
    side: const BorderSide(color: buttonColorLightFirst),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: buttonColorLightFirst, width: 0),
    ),
  ),
  elevatedButtonStyleSecond: ElevatedButton.styleFrom(
    backgroundColor: buttonColorLightSecond,
    side: const BorderSide(color: buttonColorLightSecond),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: buttonColorLightSecond, width: 0),
    ),
  ).copyWith(//for test..you can remove.
    backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (states) => states.contains(WidgetState.disabled)
            ? Colors.green // Disabled color
            : appPrimaryColor // Enabled color
    ),
  ),
);

//dark
final elevatedButtonThemeDarkExtension = ElevatedButtonThemeExtend(
  disabledColorPrimary: buttonDisableColorDarkPrimary,
  disabledColorSecondary: buttonDisableColorDarkSecondary,
  disabledColorFirst: buttonDisableColorDarkFirst,
  disabledColorSecond: buttonDisableColorDarkSecond,
  elevatedButtonStylePrimary: ElevatedButton.styleFrom(
    backgroundColor: buttonColorDarkPrimary,
    side: const BorderSide(color: buttonColorDarkPrimary),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: buttonColorDarkPrimary, width: 0),
    ),
  ),
  elevatedButtonStyleSecondary: ElevatedButton.styleFrom(
    backgroundColor: appPrimaryColor,
    side: const BorderSide(color: appPrimaryColor),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: appPrimaryColor, width: 0),
    ),
  ),
  elevatedButtonStyleFirst: ElevatedButton.styleFrom(
    backgroundColor: appPrimaryColor,
    side: const BorderSide(color: appPrimaryColor),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: appPrimaryColor, width: 0),
    ),
  ),
  elevatedButtonStyleSecond: ElevatedButton.styleFrom(
    backgroundColor: appSecondaryColor,
    side: const BorderSide(color: appSecondaryColor),
    textStyle: const TextStyle(
      color: whiteOnly,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: appSecondaryColor, width: 0),
    ),
  ),
);