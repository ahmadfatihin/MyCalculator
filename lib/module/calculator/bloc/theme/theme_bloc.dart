import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  // @override
  // ThemeState get initialState =>
  //     // Everything is accessible from the appThemeData Map.
  //     ThemeState(themeData: colorThemeData[ColorTheme.Pink]);

  bool _isDark = false;
  bool get isDark => _isDark;

  void changeTheme() {
    _isDark = !_isDark;

    // Emit = change the state of our theme
    emit(ThemeChanged(colorThemeData[ThemeState]));
  }

  void changeColor() {
    emit(ThemeChanged(colorThemeData[ThemeState]));
  }
}
