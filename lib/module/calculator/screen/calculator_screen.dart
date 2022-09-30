import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calculator_bloc.dart';
import '../section/keyboard.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  _onPressed(String command) {
    setState(() {
      context.read<CalculatorBloc>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget>[
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
