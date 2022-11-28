import 'package:flutter/material.dart';

import 'theme_card.dart';
import 'theme_colors.dart';
import 'theme_constants.dart';
import 'theme_icons.dart';
import 'theme_text.dart';

class ThemeTextfield extends StatelessWidget {
  final String? hint;
  final String? label;
  final TextEditingController controller;
  final Color backgroundColor;
  final Widget? suffix;
  final Widget? prefix;
  final Function(String text)? onEditingComplete;
  final bool isNumber;
  final bool isDecimal;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry padding;
  final bool enabled;
  final int minLines;
  final int maxLines;
  final TextAlign textAlign;
  final bool showError;
  final bool obscureText;

  const ThemeTextfield(
      {required this.controller,
      this.backgroundColor = ThemeColors.lightTertiaryBackgroundColor,
      this.hint,
      this.label,
      this.onEditingComplete,
      this.suffix,
      this.prefix,
      this.isNumber = false,
      this.isDecimal = false,
      this.focusNode,
      this.padding = const EdgeInsets.all(8.0),
      this.enabled = true,
      this.minLines = 1,
      this.textAlign = TextAlign.start,
      this.showError = false,
      this.maxLines = 1,
      this.obscureText = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: ThemeConstants.borderRadius,
              color: backgroundColor,
              child: Padding(
                padding: EdgeInsets.only(
                    top: (label == null) ? 0 : 8.0, bottom: 8.0, right: 8),
                child: Theme(
                  data: ThemeData(
                    colorScheme: const ColorScheme.light(
                      primary: ThemeColors.primaryColor,
                    ),
                    primaryColor: ThemeColors.primaryColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (prefix != null)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: prefix!,
                          ),
                        ),
                      Expanded(
                        child: TextField(
                          minLines: minLines,
                          maxLines: maxLines,
                          enabled: enabled,
                          onChanged: onEditingComplete,
                          focusNode: focusNode,
                          controller: controller,
                          onEditingComplete: (onEditingComplete != null)
                              ? () => onEditingComplete!(controller.text)
                              : null,
                          cursorColor: ThemeColors.primaryColor,
                          keyboardType: (isNumber)
                              ? TextInputType.numberWithOptions(
                                  decimal: isDecimal)
                              : null,
                          textAlign: textAlign,
                          obscureText: obscureText,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              disabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              isCollapsed: true,
                              isDense: true,
                              hintText: hint,
                              hintStyle: ThemeConstants.primaryFont.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      ThemeColors.primaryColor.withAlpha(100)),
                              contentPadding: const EdgeInsets.only(
                                  top: 8, left: 8, right: 0, bottom: 0),
                              label: (label == null)
                                  ? null
                                  : ThemeLabelSText(
                                      label!,
                                    ),

                              // hx: suffix,
                              focusColor: ThemeColors.primaryColor,
                              hoverColor: ThemeColors.primaryColor,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.auto),
                        ),
                      ),
                      if (suffix != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: suffix!,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (showError) ThemeIcons.back()
        ],
      ),
    );
  }
}

class ThemeSectionTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String? label;
  final FocusNode? focusNode;
  final EdgeInsets padding;
  final bool enabled;
  final Widget? suffix;
  final int minLines;
  final int maxLines;
  final bool showError;

  const ThemeSectionTextfield(
      {required this.controller,
      this.padding = const EdgeInsets.all(2),
      this.hint,
      this.label,
      this.focusNode,
      this.enabled = true,
      this.suffix,
      this.minLines = 1,
      this.maxLines = 2,
      this.showError = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeCard(
      padding: padding,
      child: ThemeTextfield(
        showError: showError,
        minLines: minLines,
        maxLines: maxLines,
        enabled: enabled,
        controller: controller,
        hint: hint,
        label: label,
        backgroundColor: ThemeColors.lightPrimaryBackgroundColor,
        focusNode: focusNode,
        suffix: suffix,
      ),
    );
  }
}

class ThemeLabelValueTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final Widget? suffix;
  final bool showError;

  const ThemeLabelValueTextField(
      {required this.label,
      required this.controller,
      this.suffix,
      this.showError = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ThemeBodyMText(label),
          ),
        ),
        Expanded(
          child: ThemeTextfield(
            showError: showError,
            controller: controller,
            suffix: suffix,
            textAlign: TextAlign.center,
            isNumber: true,
            isDecimal: true,
          ),
        ),
      ],
    );
  }
}
