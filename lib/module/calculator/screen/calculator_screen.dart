import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calculator_bloc.dart';
import '../section/display.dart';
import '../section/keyboard.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  _onPressed(String command) {
    setState(() {
      context.read<CalculatorBloc>().add(CalculatorEvent(command: command));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("assets/images/bg_white.png"),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: <Widget>[
            BlocBuilder<CalculatorBloc, CalculatorState>(builder: (__, state) {
              return Display(state.value);
            }),
            Keyboard(_onPressed),
          ],
        ),
      ),
    );
  }
}
