import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: Image(
            fit: BoxFit.fill,
            width: 320,
            height: 240,
            image: AssetImage('images/logo.png'),
          ),
        ),
      ),
    );
  }
}
