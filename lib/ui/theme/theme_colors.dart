import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeColors {
  static const Color primaryColor = Color(0xff5f9dca);
  static const Color secondaryColor = Color(0xffcbe7ea);

  static const Color secondaryColorDark = Color(0xff308c94);

  static Color overlayColor = Colors.grey.shade700.withOpacity(0.5);
  static const Color disabledColor = Colors.grey;

  static Color keyColor(BuildContext context) => primaryColor;

  static const Color _darkPrimaryBackgroundColor =
      Color.fromARGB(255, 25, 25, 25);
  static const Color lightPrimaryBackgroundColor = Color(0xffF9F9F9);

  static Color primaryBackgroundColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? _darkPrimaryBackgroundColor
          : lightPrimaryBackgroundColor;

  static const Color _darkSecondaryBackgroundColor =
      Color.fromARGB(255, 36, 36, 36);
  static const Color lightSecondaryBackgroundColor =
      Color.fromARGB(255, 228, 228, 228);

  static Color secondaryBackgroundColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? _darkSecondaryBackgroundColor
          : lightSecondaryBackgroundColor;

  static const Color _darkTertiaryBackgroundColor =
      Color.fromARGB(255, 54, 54, 54);
  static const Color lightTertiaryBackgroundColor =
      Color.fromARGB(255, 223, 223, 223);

  static Color tertiaryBackgroundColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? _darkTertiaryBackgroundColor
          : lightTertiaryBackgroundColor;

  static const Color darkPrimaryTextColor = Color.fromARGB(255, 47, 47, 47);
  static const Color _lightPrimaryTextColor = Color(0xffF9F9F9);

  static Color primaryTextColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? _lightPrimaryTextColor
          : darkPrimaryTextColor;

  static const Color darkSecondaryTextColor = Color.fromARGB(255, 97, 97, 97);
  static const Color _lightSecondaryTextColor =
      Color.fromARGB(255, 153, 153, 153);

  static Color secondaryTextColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? _lightSecondaryTextColor
          : darkSecondaryTextColor;

  static const Color darkTertiaryTextColor = Color.fromARGB(255, 131, 131, 131);
  static const Color _lightTertiaryTextColor =
      Color.fromARGB(255, 122, 122, 122);

  static Color tertiaryTextColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? _lightTertiaryTextColor
          : darkTertiaryTextColor;

/*   static const Color darkTextColor = const Color(0xff424242);
  static const Color lightTextColor = const Color(0xffF9F9F9); */

  static Color contrastingTextColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? darkPrimaryTextColor
          : _lightPrimaryTextColor;

  static const Color lightErrorTextColor = Color.fromARGB(255, 210, 0, 0);

  static Color errorTextColor(BuildContext context) =>
      ThemeColors.isDarkMode(context)
          ? lightErrorTextColor
          : lightErrorTextColor;

  static bool isDarkMode(BuildContext context) =>
      CupertinoTheme.brightnessOf(context) == Brightness.dark;
}
