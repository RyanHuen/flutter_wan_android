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
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.red[400]),
      home: Scaffold(
        body: Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
