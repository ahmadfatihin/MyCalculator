import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'module/calculator/bloc/calculator_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => CalculatorBloc(),
      ),
    );
  }
}
