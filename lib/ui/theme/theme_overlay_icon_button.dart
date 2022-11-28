import 'dart:ui';

import 'package:flutter/widgets.dart';

import 'theme_constants.dart';
import 'theme_overlay_card.dart';

class ThemeOverlayIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onTap;
  ThemeOverlayIconButton({required this.icon, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap ?? () {},
      child: ThemeOverlayCard(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: icon,
      )),
    );
  }
}
