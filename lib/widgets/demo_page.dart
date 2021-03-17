import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {

  DemoPage({@required this.title,@required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(16),
        child: Text(title,style: Theme.of(context).textTheme.headline4,),
        ),
        Expanded(child: child),
      ],
    );
  }
}
