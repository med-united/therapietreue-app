import 'package:flutter/material.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';

class ThemeProgressIndicator extends StatelessWidget {
  final bool light;

  const ThemeProgressIndicator({this.light = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        strokeWidth: 1.5,
        valueColor: new AlwaysStoppedAnimation<Color>((light)
            ? ThemeColors.lightPrimaryBackgroundColor
            : ThemeColors.primaryColor),
      ),
    );
  }
}
