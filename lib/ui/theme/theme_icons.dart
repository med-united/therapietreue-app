import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';

class ThemeIcons {
  static Widget closeIcon({double size = 24, Color color = Colors.black}) =>
      Icon(
        CupertinoIcons.clear,
        size: size,
        color: color,
      );

  static Widget back({Color color = ThemeColors.primaryColor}) => Icon(
        CupertinoIcons.left_chevron,
        size: 18,
        color: color,
      );

  static Widget dropdown({Color color = ThemeColors.primaryColor}) => Icon(
        CupertinoIcons.chevron_compact_down,
        size: 24,
        color: color,
      );

  static Widget dropup({Color color = ThemeColors.primaryColor}) => Icon(
        CupertinoIcons.chevron_compact_up,
        size: 24,
        color: color,
      );
  static Widget settings({Color color = ThemeColors.primaryColor}) => Icon(
        CupertinoIcons.settings,
        size: 24,
        color: color,
      );

  static Widget notification(
          {Color color = ThemeColors.primaryColor,
          double size = 24,
          bool isActive = false}) =>
      Icon(
        isActive ? CupertinoIcons.bell_fill : CupertinoIcons.bell,
        size: size,
        color: color,
      );

  static Widget email(
          {Color color = ThemeColors.primaryColor,
          double size = 24,
          bool isActive = false}) =>
      Icon(
        isActive ? CupertinoIcons.mail : CupertinoIcons.mail_solid,
        size: size,
        color: color,
      );

  static Widget searchIcon({
    Color color = ThemeColors.primaryColor,
    double size = 24,
  }) =>
      Icon(
        CupertinoIcons.search,
        size: size,
        color: color,
      );
}
