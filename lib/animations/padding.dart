import 'package:animated_container/styles.dart';
import 'package:animated_container/widgets/animate_me_please.dart';
import 'package:animated_container/widgets/demo_button.dart';
import 'package:flutter/material.dart';

class PaddingExample extends StatefulWidget {
  @override
  _PaddingExampleState createState() => _PaddingExampleState();
}

class _PaddingExampleState extends State<PaddingExample> {
  static const _firstPadding = EdgeInsets.symmetric(vertical: 48);
  static const _secondPadding = EdgeInsets.all(16);

  var _isFirstState = true;

  var _padding = _firstPadding;

  void _changePadding() {
    EdgeInsets newPadding;
    if (_isFirstState) {
      newPadding = _secondPadding;
    } else {
      newPadding = _firstPadding;
    }
    _isFirstState = !_isFirstState;

    setState(() {
      _padding = newPadding;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(color: mustard),
        ),
        Column(
          children: <Widget>[
            AnimatedPadding(
              padding: _padding,
              duration: Duration(milliseconds: 600),
              curve: Curves.easeOut,
              child: Container(
                color: Colors.orange,
                child: AnimateMePlease(),
              ),
            ),
            DemoButton(
              onPressed: _changePadding,
              lable: 'Pad me',
            ),
          ],
        ),
        Expanded(
          child: Container(color: mustard),
        ),
      ],
    );
  }
}
