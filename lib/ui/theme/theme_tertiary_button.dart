import 'package:flutter/widgets.dart';

import '../widgets/async_gesture_detector.dart';
import 'theme_colors.dart';
import 'theme_progress_indicator.dart';
import 'theme_text.dart';

class ThemeTertiaryButton extends StatefulWidget {
  final String title;
  final Future Function() onPressed;
  final EdgeInsets margin;
  final Widget? leading;
  final Color textColor;

  ThemeTertiaryButton(
      {required this.title,
      required this.onPressed,
      this.margin = const EdgeInsets.symmetric(horizontal: 8),
      this.textColor = ThemeColors.primaryColor,
      this.leading,
      Key? key})
      : super(key: key);

  @override
  _ThemeTertiaryButtonState createState() => _ThemeTertiaryButtonState();
}

class _ThemeTertiaryButtonState extends State<ThemeTertiaryButton> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: AsyncGestureDetector(
          onTap: () async {
            await widget.onPressed();
          },
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.leading != null)
                SizedBox(width: 48, child: Center(child: widget.leading!)),
              (_loading)
                  ? Expanded(
                      child: Center(
                        child: ThemeProgressIndicator(
                          light: widget.textColor ==
                              ThemeColors.darkPrimaryTextColor,
                        ),
                      ),
                    )
                  : Expanded(
                      child: ThemeBodyMText(
                        widget.title,
                        textColor: widget.textColor,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
              if (widget.leading != null)
                const SizedBox(
                  width: 48,
                )
            ],
          )),
    );
  }
}
