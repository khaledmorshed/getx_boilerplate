
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/// For Roboto Google Font
myStyleRobotoCustom({
  double fontSize = 14,
  Color color = Colors.black,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  TextDecoration? decoration,
  Color? decorationColor, TextStyle? texStyle}){
  return GoogleFonts.roboto(height: 0, fontSize: fontSize, color: color, fontWeight: fontWeight,
      fontStyle: fontStyle, decoration: decoration, decorationColor: decorationColor,
      letterSpacing: letterSpacing, textStyle: texStyle,);
}

/// For Extra Large Size
myStyleRoboto18({Color color = Colors.black, FontWeight? fontWeight, double? fontSize, TextStyle? texStyle}){
  return GoogleFonts.roboto(height: 0, fontSize: fontSize ?? 18, color: color, fontWeight: fontWeight ?? FontWeight.w800, textStyle: texStyle,);
}

/// For Large Size
myStyleRoboto16({Color color = Colors.black, FontWeight? fontWeight, double? fontSize, FontStyle fonStyle = FontStyle.normal, TextStyle? texStyle}){
  return GoogleFonts.roboto(height: 0, fontSize: fontSize ?? 16, color: color, fontWeight: fontWeight ?? FontWeight.w600, textStyle: texStyle, fontStyle: fonStyle,);
}

/// For Medium Size
myStyleRoboto14({Color color = Colors.black, FontWeight? fontWeight, double? fontSize, FontStyle fonStyle = FontStyle.normal, TextStyle? texStyle}){
  return GoogleFonts.roboto(height: 0, fontSize: fontSize ?? 14, color: color, fontWeight: fontWeight ?? FontWeight.normal, textStyle: texStyle, fontStyle: fonStyle,);
}

/// For Medium Size
myStyleRoboto13({Color color = Colors.black, FontWeight? fontWeight, double? fontSize, FontStyle fonStyle = FontStyle.normal, TextStyle? texStyle}){
  return GoogleFonts.roboto(height: 0, fontSize: fontSize ?? 13, color: color, fontWeight: fontWeight ?? FontWeight.normal, textStyle: texStyle, fontStyle: fonStyle,);
}

/// For Small Size
myStyleRoboto12({Color color = Colors.black, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.roboto(height: 0, fontSize: fontSize ?? 12, color: color, fontWeight: fontWeight ?? FontWeight.w400);
}

/// For Very Small Size
myStyleRoboto10({Color color = Colors.black, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.roboto(height: 0, fontSize: fontSize ?? 10, color: color, fontWeight: fontWeight ?? FontWeight.w400);
}


