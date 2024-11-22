import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/style/app_style.dart';
import '../../../utils/theme/app_colors/all_colors_export.dart';
import '../../../utils/theme/extend_theme/elevated_button_theme_extend.dart';


class CustomElevatedButton extends StatelessWidget {
  final int themeIndex;
  final double buttonHeight;
  final double buttonWidth;
  final double horizontalPadding;
  final double textFontSize;
  final Color? textColor;
  final double boarderRadius;
  final double boarderWidth;
  final Color? boarderColor;
  final Color? backgroundColor;
  final dynamic textWidget;
  final VoidCallback? onPressed;

  const CustomElevatedButton({
    super.key,
    required this.themeIndex,
    this.buttonHeight = 47,
    this.buttonWidth = 80,
    this.horizontalPadding = 0,
    this.textFontSize = 15,
    this.textColor,
    this.boarderRadius = 10,
    this.boarderWidth = 0.5,
    this.boarderColor,
    this.textWidget,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    late ButtonStyle buttonStyle;
    late Color disabledColor;
    late Color bgColor;
    late Color bdColor;
    late Color txtColor;
    final elevatedButtonTheme = Theme.of(context).extension<ElevatedButtonThemeExtend>()!;
    final availableStyles = [
      elevatedButtonTheme.elevatedButtonStylePrimary,
      elevatedButtonTheme.elevatedButtonStyleSecondary,
      elevatedButtonTheme.elevatedButtonStyleFirst,
      elevatedButtonTheme.elevatedButtonStyleSecond,
    ];
    final availableDisabledColors = [
      elevatedButtonTheme.disabledColorPrimary,
      elevatedButtonTheme.disabledColorSecondary,
      elevatedButtonTheme.disabledColorFirst,
      elevatedButtonTheme.disabledColorSecond,
    ];

    buttonStyle = availableStyles[themeIndex]!;
    bgColor = backgroundColor ?? availableStyles[themeIndex]!.backgroundColor!.resolve({})!;
    bdColor = boarderColor ?? availableStyles[themeIndex]!.backgroundColor!.resolve({})!;
    txtColor = textColor ?? availableStyles[themeIndex]!.textStyle!.resolve({})!.color!;
    disabledColor = availableDisabledColors[themeIndex]!;

    return SizedBox(
      height: buttonHeight.h,
      child: ElevatedButton(
        onPressed: onPressed != null ? () => onPressed!() : null,
        style: buttonStyle.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return disabledColor;
              }
              return bgColor;
            },
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 0),
          ),
          minimumSize: WidgetStateProperty.all<Size>(
            Size(buttonWidth.w, 20.h),
          ),
          fixedSize: WidgetStateProperty.all<Size>(
            Size.fromHeight(buttonHeight.h),
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(boarderRadius.sp),
            ),
          ),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(
                width: boarderWidth,
                color: onPressed != null ? bdColor : disabledColor
            ),
          ),
        ),
        child: textWidget is String
            ? Text(textWidget, overflow: TextOverflow.ellipsis, style: myStyleRoboto16(color: appWhiteColor))
            : textWidget,
      ),
    );
  }
}
