import 'package:flutter/material.dart';

class BellAnimation extends StatefulWidget {
  BellAnimation({super.key, required this.child});
  Widget child;
  @override
  _BellAnimationState createState() => _BellAnimationState();
}

class _BellAnimationState extends State<BellAnimation> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween(begin: -0.5, end: 0.5).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInOut,
    ))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller!.forward();
        }
      });

    _controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation!,
          builder: (_, child) {
            return Transform.rotate(
              angle: _animation!.value,
              child: widget.child,
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
}
