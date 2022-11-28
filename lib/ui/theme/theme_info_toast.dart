import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'theme_colors.dart';
import 'theme_constants.dart';

showThemeInfoToast({required String msg}) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: ThemeColors.darkPrimaryTextColor,
      textColor: Colors.white,
      fontSize: 16.0);
}
