import 'package:flutter/material.dart';

class TextFormFieldThemeExtend extends ThemeExtension<TextFormFieldThemeExtend> {
  final InputDecorationTheme? inputDecorationFirst;
  final InputDecorationTheme? inputDecorationSecond;
  final TextStyle? textStyleFirst;
  final TextStyle? textStyleSecond;

  // Constructor with default values
  const TextFormFieldThemeExtend({
    this.inputDecorationFirst,
    this.inputDecorationSecond,
    this.textStyleFirst,
    this.textStyleSecond,
  });

  @override
  TextFormFieldThemeExtend copyWith({
    InputDecorationTheme? inputDecorationFirst,
    InputDecorationTheme? inputDecorationSecond,
    TextStyle? textStyleFirst,
    TextStyle? textStyleSecond,
  }) {
    return TextFormFieldThemeExtend(
      inputDecorationFirst: inputDecorationFirst ?? this.inputDecorationFirst,
      inputDecorationSecond: inputDecorationSecond ?? this.inputDecorationSecond,
        textStyleFirst: textStyleFirst ?? this.textStyleFirst,
        textStyleSecond: textStyleSecond ?? this.textStyleSecond
    );
  }

  @override
  TextFormFieldThemeExtend lerp(ThemeExtension<TextFormFieldThemeExtend>? other, double t) {
    if (other is! TextFormFieldThemeExtend) return this;

    return TextFormFieldThemeExtend(
      inputDecorationFirst: _lerpInputDecorationTheme(inputDecorationFirst, other.inputDecorationFirst, t),
      inputDecorationSecond: _lerpInputDecorationTheme(inputDecorationSecond, other.inputDecorationSecond, t),
      textStyleFirst: TextStyle.lerp(textStyleFirst, other.textStyleFirst, t),
      textStyleSecond: TextStyle.lerp(textStyleSecond, other.textStyleSecond, t),
    );
  }

  // Helper method to manually lerp InputDecorationTheme
  InputDecorationTheme? _lerpInputDecorationTheme(InputDecorationTheme? a, InputDecorationTheme? b, double t) {
    if (a == null && b == null) return null;

    return InputDecorationTheme(
      border: t < 0.5 ? a?.border : b?.border,
      enabledBorder: lerpOutlineInputBorder(a?.enabledBorder as OutlineInputBorder?, b?.enabledBorder as OutlineInputBorder?, t),
      focusedBorder: lerpOutlineInputBorder(a?.focusedBorder as OutlineInputBorder?, b?.focusedBorder as OutlineInputBorder?, t),
      errorBorder: lerpOutlineInputBorder(a?.errorBorder as OutlineInputBorder?, b?.errorBorder as OutlineInputBorder?, t),
      disabledBorder: lerpOutlineInputBorder(a?.disabledBorder as OutlineInputBorder?, b?.disabledBorder as OutlineInputBorder?, t),
      focusedErrorBorder: lerpOutlineInputBorder(a?.focusedErrorBorder as OutlineInputBorder?, b?.focusedErrorBorder as OutlineInputBorder?, t),
      labelStyle: TextStyle.lerp(a?.labelStyle, b?.labelStyle, t),
      hintStyle: TextStyle.lerp(a?.hintStyle, b?.hintStyle, t),
      errorStyle: TextStyle.lerp(a?.errorStyle, b?.errorStyle, t),
      fillColor: Color.lerp(a?.fillColor, b?.fillColor, t),
      focusColor: Color.lerp(a?.focusColor, b?.focusColor, t),
      hoverColor: Color.lerp(a?.hoverColor, b?.hoverColor, t),
      floatingLabelStyle: TextStyle.lerp(a?.floatingLabelStyle, b?.floatingLabelStyle, t),
      suffixIconColor: Color.lerp(a?.suffixIconColor, b?.suffixIconColor, t),
      prefixIconColor: Color.lerp(a?.prefixIconColor, b?.prefixIconColor, t),
    );
  }

  // Helper method to interpolate OutlineInputBorder
  static OutlineInputBorder? lerpOutlineInputBorder(OutlineInputBorder? a, OutlineInputBorder? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;

    return OutlineInputBorder(
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
      borderSide: BorderSide.lerp(a.borderSide, b.borderSide, t),
    );
  }
}
