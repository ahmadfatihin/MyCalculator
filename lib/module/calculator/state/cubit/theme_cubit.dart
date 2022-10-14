import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool _isDark = false;
  bool get isDark => _isDark;

  void changeTheme() {
    _isDark = !_isDark;

    // Emit = change the state of our theme
    emit(ThemeChanged());
  }
}
