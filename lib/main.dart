import 'package:flutter/material.dart';
import 'loginscreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 20,
              ),
              new ProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressIndicator extends StatefulWidget {
  @override
  _ProgressIndicatorState createState() => new _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<ProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 8000), vsync: this);
    animation = Tween(begin: 0.0, end: 5.0).animate(controller)
      ..addListener(() {
        setState(() {
          if (animation.value > 0.99) {
            //print('Success Login');
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()));
          }
        });
      });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
      width: 200,
      color: Colors.redAccent,
      child: LinearProgressIndicator(
        value: animation.value,
        backgroundColor: Colors.blueAccent,
        valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
      ),
    ));
  }
}

loginpage() {}

Map<int, Color> color = {
  50: Color.fromRGBO(159, 30, 99, .1),
  100: Color.fromRGBO(159, 30, 99, .2),
  200: Color.fromRGBO(159, 30, 99, .3),
  300: Color.fromRGBO(159, 30, 99, .4),
  400: Color.fromRGBO(159, 30, 99, .5),
  500: Color.fromRGBO(159, 30, 99, .6),
  600: Color.fromRGBO(159, 30, 99, .7),
  700: Color.fromRGBO(159, 30, 99, .8),
  800: Color.fromRGBO(159, 30, 99, .9),
  900: Color.fromRGBO(159, 30, 99, 1),
};