import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';

class ThemeScaffold extends StatelessWidget {
  final ObstructingPreferredSizeWidget? navigationBar;
  final Widget child;
  final Color? backgroundColor;
  final bool safeAreaTop;
  final bool safeAreaBottom;

  ThemeScaffold(
      {this.navigationBar,
      required this.child,
      this.backgroundColor,
      this.safeAreaTop = true,
      this.safeAreaBottom = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: CupertinoPageScaffold(
        navigationBar: navigationBar,
        backgroundColor:
            backgroundColor ?? ThemeColors.primaryBackgroundColor(context),
        child: SafeArea(top: safeAreaTop, bottom: safeAreaBottom, child: child),
      ),
    );
  }
}
