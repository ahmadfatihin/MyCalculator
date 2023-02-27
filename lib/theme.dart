import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color Pallete
Color kBlackColor = const Color(0xff020E27).withOpacity(0.7);
Color kWhiteColor = const Color(0xFFFFFFFF).withOpacity(0.3);
Color pinkBackground = Color(0xFFFFC2B2);
Color pinkPrimary = Color(0xFFFF8E71);
Color pinkText = Color(0xFFFF4819);

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: Colors.white.withOpacity(0.2),
      scaffoldBackgroundColor: kWhiteColor);
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
      primaryColor: Colors.black.withOpacity(0.2),
      scaffoldBackgroundColor: kBlackColor);
}

enum ColorTheme {
  Pink,
  GreenDark,
  BlueLight,
  BlueDark,
}

final colorThemeData = {
  ColorTheme.Pink: ThemeData(
    brightness: Brightness.light,
    primaryColor: pinkPrimary,
    scaffoldBackgroundColor: pinkBackground,
    textTheme: GoogleFonts.interTextTheme().apply(bodyColor: pinkText),
  ),
  ColorTheme.GreenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
  ),
  ColorTheme.BlueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  ColorTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
};
