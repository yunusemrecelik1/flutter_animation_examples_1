import 'package:animated_container/styles.dart';
import 'package:animated_container/widgets/animate_me_please.dart';
import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  @override
  _OpacityExampleState createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {

  var _opacity = 1.0;
  var _sliderValue = 1.0;

  void _changeSliderValue(value){
    setState(() {
      _sliderValue = value;
    });
  }

  void _changeOpacity(value){
    setState(() {
      _opacity = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(seconds: 1),
            curve: Curves.ease,
            child: AnimateMePlease(color: salmon,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Slider(
            activeColor: salmon,
            inactiveColor: mustard,
            value: _sliderValue,
            onChanged: _changeSliderValue,
            onChangeEnd: _changeOpacity,
          ),
        )
      ],
    );
  }
}
