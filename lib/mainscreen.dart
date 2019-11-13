import 'package:flutter/material.dart';
 
void main() => runApp(Mainscreen());
 
class Mainscreen extends StatelessWidget {
  @override
  final String email;

  const Mainscreen({Key key, this.email}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}