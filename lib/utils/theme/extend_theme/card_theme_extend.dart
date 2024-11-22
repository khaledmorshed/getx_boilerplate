import 'package:flutter/material.dart';

@immutable
class CardThemeExtend extends ThemeExtension<CardThemeExtend> {
  final Color cardColorFirst;
  final Color cardColorSecond;
  final Color cardColorThird;
  final Color cardColorFourth;
  final Color borderColorFirst;
  final Color borderColorSecond;
  final Color borderColorThird;
  final Color borderColorFourth;

  const CardThemeExtend({
    required this.cardColorFirst,
    required this.cardColorSecond,
    required this.cardColorThird,
    required this.cardColorFourth,
    required this.borderColorFirst,
    required this.borderColorSecond,
    required this.borderColorThird,
    required this.borderColorFourth,
  });

  @override
  CardThemeExtend copyWith({
    Color? cardColorFirst,
    Color? cardColorSecond,
    Color? cardColorThird,
    Color? cardColorFourth,
    Color? borderColorFirst,
    Color? borderColorSecond,
    Color? borderColorThird,
    Color? borderColorFourth,
  }) {
    return CardThemeExtend(
      cardColorFirst: cardColorFirst ?? this.cardColorFirst,
      cardColorSecond: cardColorSecond ?? this.cardColorSecond,
      cardColorThird: cardColorThird ?? this.cardColorThird,
      cardColorFourth: cardColorFourth ?? this.cardColorFourth,
      borderColorFirst: borderColorFirst ?? this.borderColorFirst,
      borderColorSecond: borderColorSecond ?? this.borderColorSecond,
      borderColorThird: borderColorThird ?? this.borderColorThird,
      borderColorFourth: borderColorFourth ?? this.borderColorFourth,
    );
  }

  @override
  CardThemeExtend lerp(ThemeExtension<CardThemeExtend>? other, double t) {
    if (other is! CardThemeExtend) return this;
    return CardThemeExtend(
      cardColorFirst: Color.lerp(cardColorFirst, other.cardColorFirst, t)!,
      cardColorSecond: Color.lerp(cardColorSecond, other.cardColorSecond, t)!,
      cardColorThird: Color.lerp(cardColorThird, other.cardColorThird, t)!,
      cardColorFourth: Color.lerp(cardColorFourth, other.cardColorFourth, t)!,
      borderColorFirst: Color.lerp(borderColorFirst, other.borderColorFirst, t)!,
      borderColorSecond: Color.lerp(borderColorSecond, other.borderColorSecond, t)!,
      borderColorThird: Color.lerp(borderColorThird, other.borderColorThird, t)!,
      borderColorFourth: Color.lerp(borderColorFourth, other.borderColorFourth, t)!,
    );
  }
}
