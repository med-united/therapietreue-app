import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThemeCheckbox extends StatelessWidget {
  bool? val;
  Function(bool? val) onChanged;

  ThemeCheckbox({required this.onChanged, this.val, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Checkbox(
        tristate: true,
        onChanged: onChanged,
        value: val,
      ),
    );
  }
}
