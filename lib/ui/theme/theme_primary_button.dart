import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_progress_indicator.dart';
import 'theme_text.dart';

class ThemePrimaryButton extends StatefulWidget {
  final Future Function() onPressed;
  final String title;
  final EdgeInsets margin;
  final Widget? leading;
  final Color color;
  final Color textColor;
  final bool enabled;

  const ThemePrimaryButton(
      {required this.onPressed,
      required this.title,
      this.enabled = true,
      this.leading,
      this.margin = const EdgeInsets.symmetric(horizontal: 8),
      this.color = ThemeColors.primaryColor,
      this.textColor = ThemeColors.darkPrimaryTextColor,
      Key? key})
      : super(key: key);

  @override
  _ThemePrimaryButtonState createState() => _ThemePrimaryButtonState();
}

class _ThemePrimaryButtonState extends State<ThemePrimaryButton> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: ElevatedButton(
          onPressed: () async {
            if (!widget.enabled) {
              return;
            }

            if (!_loading) {
              setState(() {
                _loading = true;
              });
              await widget.onPressed();
              setState(() {
                _loading = false;
              });
            }
          },
          style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(2),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  stateBackgroundColor),
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  stateForegroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                      borderRadius: ThemeConstants.borderRadius))),
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
                      child: ThemeBodyLText(
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

  Color stateBackgroundColor(Set<MaterialState> materialState) {
    if (!widget.enabled) {
      return ThemeColors.disabledColor;
    }
    return widget.color;
  }

  Color stateForegroundColor(Set<MaterialState> materialState) {
    return ThemeColors.lightPrimaryBackgroundColor;
  }
}
