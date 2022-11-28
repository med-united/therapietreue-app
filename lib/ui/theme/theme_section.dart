import 'package:flutter/widgets.dart';

import 'theme_card.dart';
import 'theme_constants.dart';
import 'theme_icons.dart';
import 'theme_text.dart';

class ThemeSection extends StatelessWidget {
  final String? title;
  final Widget? child;
  final bool showError;
  final EdgeInsets childPadding;
  final Widget? trailingWidget;
  ThemeSection(
      {this.title,
      this.child,
      this.showError = false,
      this.childPadding =
          const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 4),
      this.trailingWidget,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ThemeConstants.sideMargin, vertical: 8),
          child: Row(
            children: [
              Expanded(child: ThemeBodySText(title ?? '')),
              if (trailingWidget != null) trailingWidget!,
              if (showError) ThemeIcons.closeIcon()
            ],
          ),
        ),
        if (child != null)
          Padding(
            padding: childPadding,
            child: Row(
              children: [
                Expanded(child: child!),
              ],
            ),
          ),
        SizedBox(
          height: 8,
        ),
      ],
    ));
  }
}
