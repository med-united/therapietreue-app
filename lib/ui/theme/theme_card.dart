import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';

class ThemeCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color? borderColor;
  final bool dropShadow;

  final EdgeInsets margin;
  final EdgeInsets padding;

  ThemeCard(
      {required this.child,
      this.margin = const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      this.padding = const EdgeInsets.all(0),
      this.backgroundColor = ThemeColors.lightPrimaryBackgroundColor,
      this.borderColor,
      this.dropShadow = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: (ThemeConstants.borderRadius),
        color: backgroundColor,
        border: (borderColor != null) ? Border.all(color: borderColor!) : null,
        boxShadow: [
          if (dropShadow)
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
        ],
      ),
      child: child,
    );
  }
}
