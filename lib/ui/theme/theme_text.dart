import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';

Color contrastingThemeTextColor(BuildContext context, Color color) {
  print(
      "contrasting: $color ${ThemeData.estimateBrightnessForColor(color)} ${CupertinoTheme.brightnessOf(context)}");
  if ((ThemeData.estimateBrightnessForColor(color) == Brightness.dark &&
          CupertinoTheme.brightnessOf(context) == Brightness.dark) ||
      (ThemeData.estimateBrightnessForColor(color) == Brightness.light &&
          CupertinoTheme.brightnessOf(context) == Brightness.light)) {
    print("contrasting: -> Primary");
    return ThemeColors.primaryTextColor(context);
  } else {
    return ThemeColors.contrastingTextColor(context);
  }
}

class ThemeText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color? textColor;
  final int maxLines;
  final TextAlign textAlign;
  final TextDecoration decoration;

  const ThemeText(this.text, this.style,
      {this.textColor,
      this.maxLines = 1,
      this.textAlign = TextAlign.left,
      this.decoration = TextDecoration.none,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: (style.copyWith(
              color: textColor ?? ThemeColors.primaryTextColor(context)))
          .copyWith(overflow: TextOverflow.ellipsis, decoration: decoration),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class ThemeHeadlineLText extends ThemeText {
  ThemeHeadlineLText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left,
      FontWeight fontWeight = FontWeight.w100})
      : super(
            text,
            ThemeConstants.primaryFont.copyWith(
              fontSize: 48,
              fontWeight: fontWeight,
            ),
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign);
}

class ThemeHeadlineMText extends ThemeText {
  ThemeHeadlineMText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left})
      : super(
            text,
            ThemeConstants.primaryFont.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign);
}

class ThemeHeadlineSText extends ThemeText {
  static TextStyle textStyle = ThemeConstants.primaryFont.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  ThemeHeadlineSText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left,
      TextDecoration decoration = TextDecoration.none})
      : super(text, textStyle,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

class ThemeTitleLText extends ThemeText {
  static TextStyle textStyle = ThemeConstants.primaryFont.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.w500,
  );
  ThemeTitleLText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left,
      TextDecoration decoration = TextDecoration.none})
      : super(text, textStyle,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

class ThemeTitleMText extends ThemeText {
  static TextStyle textStyle = ThemeConstants.primaryFont
      .copyWith(fontSize: 30, fontWeight: FontWeight.w500);

  ThemeTitleMText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left,
      TextDecoration decoration = TextDecoration.none})
      : super(text, textStyle,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

class ThemeTitleSText extends ThemeText {
  ThemeTitleSText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left,
      TextDecoration decoration = TextDecoration.none})
      : super(
            text,
            ThemeConstants.primaryFont
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

class ThemeLabelLText extends ThemeText {
  ThemeLabelLText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left,
      TextDecoration decoration = TextDecoration.none})
      : super(
            text,
            ThemeConstants.primaryFont
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

class ThemeLabelMText extends ThemeText {
  ThemeLabelMText(String text,
      {Color? textColor,
      int maxLines = 1,
      TextAlign textAlign = TextAlign.left,
      TextDecoration decoration = TextDecoration.none})
      : super(
            text,
            ThemeConstants.primaryFont
                .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

class ThemeLabelSText extends ThemeText {
  ThemeLabelSText(String text,
      {Color? textColor, TextDecoration decoration = TextDecoration.none})
      : super(
            text,
            ThemeConstants.primaryFont
                .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
            textColor: ThemeColors.primaryColor,
            decoration: decoration);
}

class ThemeBodyLText extends ThemeText {
  static TextStyle textStyle = ThemeConstants.primaryFont
      .copyWith(fontSize: 16, fontWeight: FontWeight.w400);
  ThemeBodyLText(String text,
      {Color? textColor,
      int maxLines = 3,
      TextDecoration textDecoration = TextDecoration.none,
      TextAlign textAlign = TextAlign.start})
      : super(text, textStyle,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: textDecoration);
}

class ThemeBodyBText extends ThemeText {
  static TextStyle textStyle = ThemeConstants.primaryFont
      .copyWith(fontSize: 16, fontWeight: FontWeight.w700);
  ThemeBodyBText(String text,
      {Color? textColor,
      int maxLines = 3,
      TextDecoration textDecoration = TextDecoration.none,
      TextAlign textAlign = TextAlign.start})
      : super(text, textStyle,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: textDecoration);
}

/* class ThemeBodyBoldText extends ThemeText {
  ThemeBodyBoldText(String text,
      {ThemeTextColor textColor = ThemeTextColor.Primary,
      int maxLines = 1,
      TextDecoration decoration = TextDecoration.none})
      : super(
            text,
            ThemeConstants.primaryFont
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            maxLines: maxLines,
            textColor: textColor,
            decoration: decoration);
} */

class ThemeBodyMText extends ThemeText {
  static TextStyle textStyle = ThemeConstants.primaryFont
      .copyWith(fontSize: 14, fontWeight: FontWeight.w400);
  ThemeBodyMText(String text,
      {Color? textColor,
      int maxLines = 3,
      TextAlign textAlign = TextAlign.start,
      TextDecoration decoration = TextDecoration.none})
      : super(text, textStyle,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

class ThemeBodySText extends ThemeText {
  static TextStyle textStyle = ThemeConstants.primaryFont
      .copyWith(fontSize: 12, fontWeight: FontWeight.w400);
  ThemeBodySText(String text,
      {Color? textColor,
      int maxLines = 3,
      TextAlign textAlign = TextAlign.start,
      TextDecoration decoration = TextDecoration.none})
      : super(text, textStyle,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            decoration: decoration);
}

/* class ThemeHintTextSmall extends ThemeText {
  ThemeHintTextSmall(String text,
      {ThemeTextColor textColor = ThemeTextColor.Primary,
      TextDecoration decoration = TextDecoration.none})
      : super(text, ThemeConstants.primaryFont.copyWith(fontSize: 10),
            textColor: textColor, decoration: decoration);
} */
