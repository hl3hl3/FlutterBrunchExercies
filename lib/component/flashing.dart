import 'package:brunch_0725/component/breed.dart';
import 'package:flutter/material.dart';

class Flashing extends StatefulWidget {
  final int millis;
  final Widget child;

  Flashing({
    this.millis = 1000,
    this.child,
  });

  @override
  _FlashingState createState() => _FlashingState();
}

class _FlashingState extends State<Flashing> {

  bool _dispose = false;
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _dispose = false;
  }

  @override
  void dispose() {
    super.dispose();
    _dispose = true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(milliseconds: widget.millis), () {
      if (!_dispose) {
        setState(() {
          _visible = !_visible;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedOpacity(
        duration: Duration(milliseconds: widget.millis),
        opacity: _visible ? 1.0 : 0.5,
        curve: Curves.linear,
        onEnd: () {
          if (!_dispose) {
            setState(() {
              _visible = !_visible;
            });
          }
        },
        child: widget.child,
      ),
    );
  }
}
