import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeWidgetState();
  }
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
