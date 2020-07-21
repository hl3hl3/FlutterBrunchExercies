import 'package:brunch_0725/component/flashing.dart';
import 'package:brunch_0725/component/breed.dart';
import 'package:flutter/material.dart';

import 'component/fly.dart';

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
    final fireColor = Color(0xffffffff);
    final bg = Colors.black;
    final countPerLayer = 5;

    final smallFly = Fly(color: fireColor, bgColor: bg, size: 10);
    final bigFly = Fly(color: fireColor, bgColor: bg, size: 20);

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          Flashing(
            millis: 500,
            child: Breed(amount: countPerLayer, child: smallFly),
          ),
          Flashing(
            millis: 700,
            child: Breed(amount: countPerLayer, child: smallFly),
          ),
          Flashing(
            millis: 800,
            child: Breed(amount: 10, child: smallFly),
          ),
          Flashing(
            millis: 900,
            child: Breed(amount: 10, child: smallFly),
          ),
          Flashing(
            millis: 1000,
            child: Breed(amount: countPerLayer, child: bigFly),
          ),
        ],
      ),
    );
  }
}
