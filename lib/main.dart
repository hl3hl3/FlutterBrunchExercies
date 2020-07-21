import 'package:brunch_0725/component/fly.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BrunchDemo());
}

class BrunchDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brunch Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Brunch0725(),
    );
  }
}

class Brunch0725 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
              child: Text(
            'TODO',
            style: TextStyle(color: Colors.white),
          )),
        ],
      ),
    );
  }
}
