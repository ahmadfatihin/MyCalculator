import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const Grey = Color.fromARGB(255, 180, 180, 180);
  static const Default = Color.fromARGB(255, 40, 40, 40);
  static const Operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    @required this.text,
    this.big = false,
    this.color = Default,
    @required this.cb,
  });

  Button.big({
    @required this.text,
    this.big = true,
    this.color = Default,
    @required this.cb,
  });

  Button.operation({
    @required this.text,
    this.big = false,
    this.color = Operation,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: this.color),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b) {
          list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1), b]);
          return list;
        }),
      ),
    );
  }
}
