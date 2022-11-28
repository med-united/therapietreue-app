import 'dart:ui';

import 'package:flutter/widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';

class ThemeOverlayCard extends StatelessWidget {
  Widget child;
  ThemeOverlayCard({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: ThemeConstants.borderRadius,
          color: ThemeColors.overlayColor),
      child: BackdropFilter(
          filter: new ImageFilter.blur(
              sigmaX: 10, sigmaY: 10, tileMode: TileMode.decal),
          child: child),
    );
  }
}
