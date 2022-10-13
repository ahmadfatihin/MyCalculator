import 'package:flutter/material.dart';

// Color Pallete
Color kBlackColor = const Color(0xff020E27).withOpacity(0.7);
Color kWhiteColor = const Color(0xFFFFFFFF).withOpacity(0.1);

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
