import 'dart:math' as math;

import 'package:flutter/material.dart';

class RotateAnimation extends StatefulWidget {
   RotateAnimation({Key? key,required this.child,this.startAfter = 0,required this.duration}) : super(key: key);

   final Widget child;
   final int startAfter;
   final int duration;
  @override
  State<RotateAnimation> createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation> with SingleTickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(milliseconds: widget.duration));

  @override
  void initState() {
    super.initState();
    Future.delayed( Duration(milliseconds: widget.startAfter),() {
      _controller.forward();
    },);
    // Add code after super
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
