
import 'package:flutter/material.dart';
import '../app_colors/all_colors_export.dart';
import '../extend_theme/text_form_field_theme_extend.dart';

//light theme
const textFormFieldThemeLightExtension  = TextFormFieldThemeExtend(
  textStyleFirst: TextStyle(
      color: textFieldTextLightFirst
  ),
  textStyleSecond: TextStyle(
      color: textFieldTextLightFirst
  ),
  inputDecorationFirst: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldBoarderColorLightFirst),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldEnableBoarderColorLightFirst),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldFocusBoarderColorLightFirst),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldEnableBoarderColorLightFirst),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    labelStyle: TextStyle(color: textFieldLabelColorLightFirst),
    hintStyle: TextStyle(color: textFieldHintColorLightFirst),
    errorStyle: TextStyle(color: Colors.red),
    fillColor: textFieldFillColorLightFirst,
    focusColor: textFieldFocusBoarderColorLightFirst,
    floatingLabelStyle: TextStyle(color: textFieldFloatingLabelColorDarkFirst),
    suffixIconColor: textFieldSuffixColorLightFirst,
    prefixIconColor: textFieldPrefixColorLightFirst,
    counterStyle: TextStyle(color: Colors.grey),
    helperStyle: TextStyle(color: Colors.grey),
  ),
  inputDecorationSecond: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.purple),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent),
    ),
    labelStyle: TextStyle(color: Colors.blueGrey),
    hintStyle: TextStyle(color: Colors.blueGrey),
    errorStyle: TextStyle(color: Colors.red),
    fillColor: Colors.blueGrey,
    focusColor: Colors.green,
    hoverColor: Colors.green,
    floatingLabelStyle: TextStyle(color: Colors.orange),
    suffixIconColor: Colors.green,
    prefixIconColor: Colors.green,
    counterStyle: TextStyle(color: Colors.blueGrey),
    helperStyle: TextStyle(color: Colors.blueGrey),
  ),
);

//darkTheme
const textFormFieldThemeDarkExtension = TextFormFieldThemeExtend(
  textStyleFirst: TextStyle(
      color: textFieldTextDarkFirst
  ),
  textStyleSecond:  TextStyle(
      color: textFieldTextLightFirst
  ),
  inputDecorationFirst: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldBoarderColorDarkFirst),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldEnableBoarderColorDarkFirst),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldFocusBoarderColorDarkFirst),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: textFieldErrorBoarderColorDarkFirst),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.orange),
    ),
    labelStyle: TextStyle(color: textFieldLabelColorDarkFirst),
    hintStyle: TextStyle(color: textFieldHintColorDarkFirst),
    errorStyle: TextStyle(color: Colors.white),
    fillColor: textFieldFillColorDarkFirst,
    focusColor: textFieldFocusBoarderColorDarkFirst,
    floatingLabelStyle: TextStyle(color: textFieldFloatingLabelColorDarkFirst),
    suffixIconColor: textFieldSuffixColorDarkFirst,
    prefixIconColor: textFieldPrefixColorDarkFirst,
    counterStyle: TextStyle(color: Colors.grey),
    helperStyle: TextStyle(color: Colors.grey),
  ),
  inputDecorationSecond: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.purple),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent),
    ),
    labelStyle: TextStyle(color: Colors.blueGrey),
    hintStyle: TextStyle(color: Colors.blueGrey),
    errorStyle: TextStyle(color: Colors.white),
    fillColor: Colors.blueGrey,
    focusColor: Colors.green,
    hoverColor: Colors.green,
    floatingLabelStyle: TextStyle(color: Colors.orange),
    suffixIconColor: Colors.green,
    prefixIconColor: Colors.green,
    counterStyle: TextStyle(color: Colors.blueGrey),
    helperStyle: TextStyle(color: Colors.blueGrey),
  ),
);