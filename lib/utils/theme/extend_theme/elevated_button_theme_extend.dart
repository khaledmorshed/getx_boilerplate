import 'package:flutter/material.dart';

class ElevatedButtonThemeExtend extends ThemeExtension<ElevatedButtonThemeExtend> {
  final ButtonStyle? elevatedButtonStylePrimary;
  final ButtonStyle? elevatedButtonStyleSecondary;
  final ButtonStyle? elevatedButtonStyleFirst;
  final ButtonStyle? elevatedButtonStyleSecond;
  final Color? disabledColorPrimary;
  final Color? disabledColorSecondary;
  final Color? disabledColorFirst;
  final Color? disabledColorSecond;

  const ElevatedButtonThemeExtend({
    this.elevatedButtonStylePrimary,
    this.elevatedButtonStyleSecondary,
    this.elevatedButtonStyleFirst,
    this.elevatedButtonStyleSecond,
    this.disabledColorPrimary,
    this.disabledColorSecondary,
    this.disabledColorFirst,
    this.disabledColorSecond,
  });

  @override
  ElevatedButtonThemeExtend copyWith({
    ButtonStyle? elevatedButtonStylePrimary,
    ButtonStyle? elevatedButtonStyleSecondary,
    ButtonStyle? elevatedButtonStyleFirst,
    ButtonStyle? elevatedButtonStyleSecond,
    Color? disabledColorPrimary,
    Color? disabledColorSecondary,
    Color? disabledColorFirst,
    Color? disabledColorSecond,
  }) {
    return ElevatedButtonThemeExtend(
      elevatedButtonStylePrimary: elevatedButtonStylePrimary ?? this.elevatedButtonStylePrimary,
      elevatedButtonStyleSecondary: elevatedButtonStyleSecondary ?? this.elevatedButtonStyleSecondary,
      elevatedButtonStyleFirst: elevatedButtonStyleFirst ?? this.elevatedButtonStyleFirst,
      elevatedButtonStyleSecond: elevatedButtonStyleSecond ?? this.elevatedButtonStyleSecond,
      disabledColorPrimary: disabledColorPrimary ?? this.disabledColorPrimary,
      disabledColorSecondary: disabledColorSecondary ?? this.disabledColorSecondary,
      disabledColorFirst: disabledColorFirst ?? this.disabledColorFirst,
      disabledColorSecond: disabledColorSecond ?? this.disabledColorSecond,
    );
  }

  @override
  ElevatedButtonThemeExtend lerp(ThemeExtension<ElevatedButtonThemeExtend>? other, double t) {
    if (other is! ElevatedButtonThemeExtend) return this;
    return ElevatedButtonThemeExtend(
      elevatedButtonStylePrimary: ButtonStyle.lerp(elevatedButtonStylePrimary, other.elevatedButtonStylePrimary, t),
      elevatedButtonStyleSecondary: ButtonStyle.lerp(elevatedButtonStyleSecondary, other.elevatedButtonStyleSecondary, t),
      elevatedButtonStyleFirst: ButtonStyle.lerp(elevatedButtonStyleFirst, other.elevatedButtonStyleFirst, t),
      elevatedButtonStyleSecond: ButtonStyle.lerp(elevatedButtonStyleSecond, other.elevatedButtonStyleSecond, t),
      disabledColorPrimary: Color.lerp(disabledColorPrimary, other.disabledColorPrimary, t),
      disabledColorSecondary: Color.lerp(disabledColorSecondary, other.disabledColorSecondary, t),
      disabledColorFirst: Color.lerp(disabledColorFirst, other.disabledColorFirst, t),
      disabledColorSecond: Color.lerp(disabledColorSecond, other.disabledColorSecond, t),
    );
  }
}
