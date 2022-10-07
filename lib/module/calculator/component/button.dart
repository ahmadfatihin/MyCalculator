import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class Button extends StatelessWidget {
  static const Dark = Color.fromARGB(255, 145, 145, 145);
  static const Default = Color.fromARGB(255, 40, 40, 40);
  static const Operation = Color.fromARGB(255, 13, 203, 250);

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
      child: GlassContainer(
        blur: 1,
        color: Colors.transparent,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.1),
            Colors.blue.withOpacity(0.3),
          ],
        ),
        border: Border.fromBorderSide(BorderSide.none),
        shadowStrength: 3,
        shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(16),
        shadowColor: Colors.white.withOpacity(0.24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent),
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
      ),
    );
  }
}
