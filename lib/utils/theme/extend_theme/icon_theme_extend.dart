import 'package:flutter/material.dart';

class IconThemeExtend extends ThemeExtension<IconThemeExtend> {
  final IconThemeData? iconThemePrimary;
  final IconThemeData? iconThemeSecondary;
  final IconThemeData? iconThemeFirst;
  final IconThemeData? iconThemeSecond;
  final IconThemeData? iconThemeThird;

  const IconThemeExtend({
    this.iconThemePrimary,
    this.iconThemeSecondary,
    this.iconThemeFirst,
    this.iconThemeSecond,
    this.iconThemeThird,
  });

  @override
  IconThemeExtend copyWith({
    IconThemeData? iconThemePrimary,
    IconThemeData? iconThemeScondary,
    IconThemeData? iconThemeFirst,
    IconThemeData? iconThemeSecond,
    IconThemeData? iconThemeThird,
  }) {
    return IconThemeExtend(
      iconThemePrimary: iconThemePrimary ?? this.iconThemePrimary,
      iconThemeSecondary: iconThemeScondary ?? this.iconThemeSecondary,
      iconThemeFirst: iconThemeFirst ?? this.iconThemeFirst,
      iconThemeSecond: iconThemeSecond ?? this.iconThemeSecond,
      iconThemeThird: iconThemeThird ?? this.iconThemeThird,
    );
  }

  @override
  IconThemeExtend lerp(ThemeExtension<IconThemeExtend>? other, double t) {
    if (other is! IconThemeExtend) return this;

    return IconThemeExtend(
      iconThemePrimary: IconThemeData.lerp(iconThemePrimary, other.iconThemePrimary, t),
      iconThemeSecondary: IconThemeData.lerp(iconThemeSecondary, other.iconThemeSecondary, t),
      iconThemeFirst: IconThemeData.lerp(iconThemeFirst, other.iconThemeFirst, t),
      iconThemeSecond: IconThemeData.lerp(iconThemeSecond, other.iconThemeSecond, t),
      iconThemeThird: IconThemeData.lerp(iconThemeThird, other.iconThemeThird, t),
    );
  }
}
