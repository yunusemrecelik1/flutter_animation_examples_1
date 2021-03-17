import 'package:flutter/material.dart';

class DemoButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String lable;

  DemoButton({@required this.onPressed,@required this.lable});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlineButton(
        borderSide: BorderSide(width: 0.5),
        onPressed: onPressed,
        child: Text(
          lable,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
