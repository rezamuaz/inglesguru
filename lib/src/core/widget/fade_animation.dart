import 'package:flutter/material.dart';

class FadeImageScreen extends StatefulWidget {
  final Widget widget;

  const FadeImageScreen({super.key,required this.widget});
  @override
  _FadeImageScreenState createState() => _FadeImageScreenState();
}

class _FadeImageScreenState extends State<FadeImageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: Duration(seconds: 2), // Duration of the fade
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the fade-in animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
          opacity: _animation,
          child: widget
        );
  }
}
