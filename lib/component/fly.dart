import 'package:flutter/material.dart';

class Fly extends StatelessWidget {
  final double size;
  final Color color;
  final Color bgColor;

  Fly({
    this.size = 20,
    this.color = Colors.white,
    this.bgColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color,
            bgColor,
          ],
          radius: 0.5,
        ),
      ),
    );
  }
}
