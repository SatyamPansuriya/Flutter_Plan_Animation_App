// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class BouncingWidget extends StatefulWidget {
  const BouncingWidget({required  this.child,required this.startAfter});
  final Widget child;
  final int startAfter;


  @override
  _BouncingWidgetState createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<BouncingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );

    Future.delayed(Duration(milliseconds: widget.startAfter),() {
      _controller.forward();
    },);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: widget.child
      ),
    );
  }
}