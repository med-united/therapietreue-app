import 'package:flutter/widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_primary_button.dart';
import 'theme_text.dart';

class ThemeSecondaryButton extends StatelessWidget {
  final String title;
  final Future Function() onPressed;
  final EdgeInsets margin;
  final Widget? leading;
  ThemeSecondaryButton(
      {required this.title,
      required this.onPressed,
      this.margin = const EdgeInsets.symmetric(horizontal: 8),
      this.leading,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemePrimaryButton(
      onPressed: onPressed,
      title: title,
      margin: margin,
      color: ThemeColors.lightPrimaryBackgroundColor,
      textColor: ThemeColors.darkPrimaryTextColor,
      leading: leading,
    );
  }
}
