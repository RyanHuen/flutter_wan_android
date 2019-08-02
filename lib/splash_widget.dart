import 'dart:async';

import 'package:flutter/material.dart';

import 'main/main_widget.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: <Widget>[
          Container(
            child: Center(
              child: Image(
                fit: BoxFit.fill,
                width: 320,
                height: 240,
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
          CountDownWidget(
            onDelayFinish: () {
              /*延迟Delay结束，跳转首页*/
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MainWidget()),
                /*跳转首页，把Splash页面关闭*/
                (route) {
                  return route == null;
                },
              );
            },
          )
        ],
      ),
    );
  }
}

class CountDownWidget extends StatefulWidget {
  final onDelayFinish;

  CountDownWidget({@required this.onDelayFinish});

  @override
  State<StatefulWidget> createState() {
    return _CountDownWidgetState();
  }
}

class _CountDownWidgetState extends State<CountDownWidget> {
  @override
  void initState() {
    super.initState();
    startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Text('');
  }

  void startDelay() {
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () {
        return true;
      },
    ).then(
      (value) {
        /*使用Future延迟2秒进入主页，确保能够看到Splash*/
        widget.onDelayFinish();
      },
    );
  }
}
