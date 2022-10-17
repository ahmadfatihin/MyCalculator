import 'package:my_calculator/module/calculator/bloc/calculator/calculator_bloc.dart';
import 'package:my_calculator/module/calculator/screen/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_calculator/theme.dart';

import 'module/calculator/bloc/theme/theme_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.isDark ? darkThemeData(context) : lightThemeData(context),
      home: BlocProvider(
        create: (_) => CalculatorBloc(),
        child: CalculatorScreen(),
      ),
    );
  }
}
