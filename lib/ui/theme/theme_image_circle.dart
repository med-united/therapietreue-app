import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'theme_colors.dart';
import 'theme_icons.dart';

class ThemeImageCircle extends StatelessWidget {
  double size;
  Widget child;
  Function()? onRemove;
  ThemeImageCircle(
      {required this.child, this.onRemove, this.size = 64, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: Stack(
        children: [
          Container(
            height: size,
            width: size,
            clipBehavior: Clip.hardEdge,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(size / 2)),
            child: child,
          ),
          if (onRemove != null)
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: onRemove,
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: ThemeColors.lightSecondaryBackgroundColor,
                      borderRadius: BorderRadius.circular(24 / 2)),
                  child: Center(child: ThemeIcons.closeIcon(size: 16)),
                ),
              ),
            )
        ],
      ),
    );
  }
}
