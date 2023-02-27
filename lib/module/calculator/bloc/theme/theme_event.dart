import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_calculator/theme.dart';

@immutable
abstract class ThemeEvent extends Equatable {}

class ThemeChanged extends ThemeEvent {
  final ColorTheme theme;

  ThemeChanged(this.theme);

  @override
  // TODO: implement props
  List<Object> get props => [theme];
}
