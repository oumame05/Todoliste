import 'dart:math';
import 'package:flutter/material.dart';

class GalaxyBackground extends StatelessWidget {
  final Widget child;

  const GalaxyBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF0B0F19), // Deep dark
            Color(0xFF1E103C), // Deep purple
            Color(0xFF2D1B4E), // Lighter purple
            Color(0xFF0F172A), // Midnight blue
          ],
          stops: [0.0, 0.4, 0.7, 1.0],
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: StarsPainter(),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class StarsPainter extends CustomPainter {
  final Random _random = Random(42); // Fixed seed for stable background

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withOpacity(0.5);

    // Draw random stars
    for (int i = 0; i < 100; i++) {
      final x = _random.nextDouble() * size.width;
      final y = _random.nextDouble() * size.height;
      final radius = _random.nextDouble() * 1.5;
      
      // Make some stars shinier
      final opacity = _random.nextDouble() * 0.5 + 0.1;
      paint.color = Colors.white.withOpacity(opacity);
      
      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
