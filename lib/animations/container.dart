import 'dart:math';
import 'package:random_color/random_color.dart';
import 'package:animated_container/styles.dart';
import 'package:animated_container/widgets/demo_button.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vmath;

class ContainerExample extends StatefulWidget {
  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  var _size = Size(200, 200);
  var _padding = EdgeInsets.all(8);
  var _borderSize = 1.0;
  var _borderRadius = 0.0;
  var _margin = EdgeInsets.all(0);

  final _random = Random();
  final _randomColor = RandomColor();

  Color _color = mustard;
  var _rotation = 0.0;
  var _boxShadow = [
    BoxShadow(color: Colors.grey, offset: Offset(15.0, 10.0), blurRadius: 20.0)
  ];

  void _animateSize() {
    setState(() {
      _size = Size(10.0 + _random.nextInt(300), 10.0 + _random.nextInt(300));
    });
  }

  void _animateBorderSize() {
    setState(() {
      _borderSize = _random.nextInt(10).toDouble();
    });
  }

  void _animateBorderRadius() {
    setState(() {
      _borderRadius = _random.nextInt(100).toDouble();
    });
  }

  void _animateColor() {
    setState(() {
      _color = _randomColor.randomColor();
    });
  }
  void _animatePadding() {
    setState(() {
      _padding = EdgeInsets.all(8.0 + Random().nextInt(32));
    });
  }

  void _animateMargin() {
    setState(() {
      _margin = EdgeInsets.all(0.0 + Random().nextInt(24));
    });
  }

  void _animateBoxShadow() {
    setState(() {
      _boxShadow = [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(
              _random.nextInt(20).toDouble(), _random.nextInt(20).toDouble()),
          blurRadius: _random.nextInt(30).toDouble(),
        )
      ];
    });
  }
  void _animateTranslation() {
    setState(() {
      _rotation = _random.nextInt(200).toDouble();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 500),
          padding: _padding,
          decoration: BoxDecoration(
            border: Border.all(width: _borderSize),
            boxShadow: _boxShadow,
            borderRadius: BorderRadius.circular(_borderRadius),
            color: _color,
          ),
          margin: _margin,
          transform: Matrix4.translation(vmath.Vector3(0, 0, 0))
            ..rotateZ(_rotation),
          width: _size.width,
          height: _size.height,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              DemoButton(
                onPressed: _animateSize,
                lable: 'Animate Size',
              ),
              DemoButton(
                onPressed: _animateBorderSize,
                lable: 'Border Size',
              ),
              DemoButton(
                onPressed: _animateBorderRadius,
                lable: 'Animate Border',
              ),
              DemoButton(
                onPressed: _animateColor,
                lable: 'Animate Color',
              ),
              DemoButton(
                onPressed: _animatePadding,
                lable: 'Animate Padding',
              ),
              DemoButton(
                onPressed: _animateMargin,
                lable: 'Animate Margin',
              ),
              DemoButton(
                onPressed: _animateBoxShadow,
                lable: 'Animate Shadow',
              ),
              DemoButton(
                onPressed: _animateTranslation,
                lable: 'Animate Translation',
              )
            ],
          ),
        ),
      ],
    );
  }
}
