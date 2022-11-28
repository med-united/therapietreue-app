import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/async_gesture_detector.dart';
import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_icons.dart';
import 'theme_text.dart';

class ThemeNavigationBar extends CupertinoNavigationBar {
  ThemeNavigationBar(
    BuildContext context, {
    String? title,
    List<Widget>? leading,
    List<Widget>? trailing,
    bool showBackButton = false,
    Color backgroundColor = ThemeColors.lightPrimaryBackgroundColor,
  }) : super(
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: trailing ?? [],
            ),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showBackButton)
                  AsyncGestureDetector(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ThemeIcons.back(),
                    ),
                  ),
                ...(leading ?? [])
              ],
            ),
            middle: ThemeHeadlineSText(title ?? ""),
            backgroundColor: backgroundColor,
            border: null);
}
