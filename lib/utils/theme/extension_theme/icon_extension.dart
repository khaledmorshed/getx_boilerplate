import 'package:flutter/material.dart';
import '../app_colors/basic_color.dart';
import '../extend_theme/icon_theme_extend.dart';

//light
const iconThemeLightExtension = IconThemeExtend(
  iconThemePrimary: IconThemeData(
    color: appPrimaryColor,
    opacity: 0.8,
  ),
  iconThemeSecondary: IconThemeData(
    color: appSecondaryColor,
    opacity: 0.8,
  ),
  iconThemeFirst: IconThemeData(
    color: whiteOnly,
    opacity: 0.8,
  ),
  iconThemeSecond: IconThemeData(
    color: blackOnly,
    opacity: 0.9,
  ),
  iconThemeThird: IconThemeData(
    color: whiteOnly,
    opacity: 1.0,
  ),
);

//dark
const iconThemDarkExtension =  IconThemeExtend(
  iconThemePrimary: IconThemeData(
    color: appPrimaryColor,
    opacity: 0.8,
  ),
  iconThemeSecondary: IconThemeData(
    color: appSecondaryColor,
    opacity: 0.8,
  ),
  iconThemeFirst: IconThemeData(
    color: whiteOnly,
    opacity: 0.8,
  ),
  iconThemeSecond: IconThemeData(
    color: whiteOnly,
    opacity: 0.9,
  ),
  iconThemeThird: IconThemeData(
    color: whiteOnly,
    opacity: 1.0,
  ),
);