import 'package:animated_container/styles.dart';
import 'package:flutter/material.dart';

class AnimateMePlease extends StatelessWidget {

  AnimateMePlease({this.color = darkBlue});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 200,
      height: 200,
      child: Center(
        child: Text(
          'This can be anything',
          style: TextStyle(color: Colors.white,fontSize: 18),
        ),
      ),
    );
  }
}
