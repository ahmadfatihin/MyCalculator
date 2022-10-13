part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {}

// State for initial app
class ThemeInitial extends ThemeState {}

// State for controll the theme of the app
class ThemeChanged extends ThemeState {}
