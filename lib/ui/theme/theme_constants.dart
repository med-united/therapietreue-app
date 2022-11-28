import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConstants {
/*   static const Color primaryColor = Color(0xff009988);
  static const Color primaryBackgroundColor =
      const Color(0xFFFFFFFF); //const Color(0xffF8F8F8);

  static const Color secondaryColor = primaryBackgroundColor;
  static const Color secondaryBackgroundColor =
      const Color(0xFFFFFBF5); //Color(0xFFFFF8EF);

  static const Color tertiaryBackgroundColor = const Color(0xFFF2F2F2);

  static const Color primaryTextColor = const Color(0xff424242);
  static const Color secondaryTextColor = const Color(0xffF9F9F9);
  static const Color unselectedTextColor = Colors.grey;

  static const Color disabledColor = Colors.grey;

  static Color overlayColor = Colors.grey.shade700
      .withOpacity(0.5); */ //primaryTextColor.withOpacity(0.4);
  // const Color(0xAA757575); //const Color(0x99939393);

  static TextStyle primaryFont = GoogleFonts.cabin();
  static TextStyle secondaryFont = GoogleFonts.cabin();

  static const BorderRadius borderRadius = BorderRadius.all(radius);

  static const radius = Radius.circular(18);

  static const double sideMargin = 16;

  static const double minPrice = 0;
  static const double maxPrice = 500;

  static const double minRadius = 1000;
  static const double maxRadius = 20000;

  static const double minTemp = -10;
  static const double maxTemp = 50;

  static const double minWater = 0;
  static const double maxWater = 9;

  static const double minHum = 0;
  static const double maxHum = 100;
}
