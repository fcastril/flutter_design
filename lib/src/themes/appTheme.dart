import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = const Color(0xff33C1FF);
  static Color secondary = Colors.red;
  static ThemeData getThemePpal() {
    return ThemeData.light().copyWith();
  }
}
