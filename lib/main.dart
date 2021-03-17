import 'package:animated_container/animations/align.dart';
import 'package:animated_container/animations/container.dart';
import 'package:animated_container/animations/cross_fade.dart';
import 'package:animated_container/animations/default_text_style.dart';
import 'package:animated_container/animations/opacity.dart';
import 'package:animated_container/animations/padding.dart';
import 'package:animated_container/animations/physical_model.dart';
import 'package:animated_container/styles.dart';
import 'package:animated_container/widgets/demo_page.dart';
import 'package:flutter/material.dart';

import 'animations/positioned.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations Examples',
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animations Examples'),
        ),
        body: ImplicitAnimations(),
      ),
    );
  }
}
class ImplicitAnimations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        DemoPage(title:'Container',child: ContainerExample()),
        DemoPage(title: 'Cross Fade', child: CrossFadeExample()),
        DemoPage(title: 'Physical Model', child: PhysicalModelExample()),
        DemoPage(title: 'Opacity', child: OpacityExample()),
        DemoPage(title: 'Default Text Style', child: DefaultTextStyleExample()),
        DemoPage(title: 'Align', child: AlignExample()),
        DemoPage(title: 'Padding', child: PaddingExample()),
        DemoPage(title: 'Positioned', child: PositionedExample()),
      ],
    );
  }
}
