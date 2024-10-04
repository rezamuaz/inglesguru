import 'package:flutter/material.dart';

class Blob extends StatelessWidget {
  final double rotation;
  final double scale;
  final Color color;

  const Blob({super.key, required this.color, this.rotation = 0, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Transform.rotate(
        angle: rotation,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.elliptical(18, 18),
              topRight: Radius.elliptical(42, 18),
              bottomRight: Radius.elliptical(43.8, 42),
              bottomLeft: Radius.elliptical(16.2, 42),
              
            ),
          ),
        ),
      ),
    );
  }
}