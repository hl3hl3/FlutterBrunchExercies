import 'dart:math';

import 'package:flutter/material.dart';

class Breed extends StatelessWidget {
  final int amount;
  final random = Random.secure();
  final Widget child;

  Breed({
    this.amount = 10,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final flies = List.generate(amount, (index) => _fly(size));
    return Stack(
      children: flies,
    );
  }

  Widget _fly(Size size) {
    return Positioned(
      left: random.nextDouble() * size.width,
      top: random.nextDouble() * size.height,
      child: child,
    );
  }
}
