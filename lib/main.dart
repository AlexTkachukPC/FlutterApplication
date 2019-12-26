import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Project',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Project'),
        ),
        body: HelloContainer(),
      ),
    ),
  );
}

class HelloContainer extends StatefulWidget {
  @override
  createState() => HelloContainerState();
}

class HelloContainerState extends State<HelloContainer> {
  var _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          });
        },
        color: _color,
        child: Center(
          child: Text(
            "Hello, There!",
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
        ),
        ),
      ),
    );
  }
}
