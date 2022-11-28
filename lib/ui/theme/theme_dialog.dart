import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_primary_button.dart';
import 'theme_secondary_button.dart';
import 'theme_text.dart';

class ThemeDialog extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const ThemeDialog(
      {required this.child, this.padding = const EdgeInsets.all(8.0), Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        backgroundColor: ThemeColors.lightTertiaryBackgroundColor,
        shape: const RoundedRectangleBorder(
            borderRadius: ThemeConstants.borderRadius),
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            clipBehavior: Clip.hardEdge,
            padding: padding,
            child: child,
          );
        }));
  }
}

Future<void> showThemeDialog({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
  EdgeInsets padding = const EdgeInsets.all(8.0),
}) async {
  await showPlatformDialog(
      context: context,
      builder: (ctx) => ThemeDialog(
            padding: padding,
            child: builder(ctx),
          ),
      barrierDismissible: true);
}

Future<void> showInfoDialog(
    {required BuildContext context,
    String? title,
    String? body,
    String primary = "Okay",
    String secondary = "Abbrechen",
    Future Function()? onPrimary,
    Future Function()? onSecondary}) {
  return showThemeDialog(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ThemeTitleLText(title),
                ),
              if (body != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ThemeBodyLText(
                    body,
                    textAlign: TextAlign.center,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    if (onSecondary != null)
                      Expanded(
                        child: ThemeSecondaryButton(
                          title: secondary,
                          onPressed: () async {
                            onSecondary.call();
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    if (onPrimary != null)
                      Expanded(
                        child: ThemePrimaryButton(
                            onPressed: () async {
                              onPrimary.call();
                              Navigator.pop(context);
                            },
                            title: primary),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
