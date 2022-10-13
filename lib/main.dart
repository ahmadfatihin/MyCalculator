import 'package:my_calculator/module/calculator/screen/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_calculator/theme.dart';

import 'module/calculator/state/calculator_bloc/calculator_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: _iconBool ? lightThemeData(context) : darkThemeData(context),
      home: BlocProvider(
        create: (_) => CalculatorBloc(),
        child: CalculatorScreen(),
      ),
    );
  }
}
