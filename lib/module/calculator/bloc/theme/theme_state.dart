part of 'theme_bloc.dart';

@immutable
class ThemeState {}

// State for initial app
class ThemeInitial extends ThemeState {}

// State for controll the theme of the app
class ThemeChanged extends ThemeState {
  final ThemeData themeData;
  ThemeChanged(this.themeData);
}
