import 'dart:math' as math;
import 'package:flutter/material.dart';

class GradientCircleAvatar extends StatelessWidget {
  final double radius;
  final String backgroundImage;
  final List<Color> gradientColors;

  const GradientCircleAvatar({
    super.key,
    required this.radius,
    required this.backgroundImage,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GradientCirclePainter(
        radius: radius,
        gradientColors: gradientColors,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(backgroundImage),
      ),
    );
  }
}

class _GradientCirclePainter extends CustomPainter {
  final double radius;
  final List<Color> gradientColors;

  _GradientCirclePainter({
    required this.radius,
    required this.gradientColors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    const startAngle = -math.pi / 2;
    const sweepAngle = 2 * math.pi;

    final gradient = SweepGradient(
      startAngle: startAngle,
      endAngle: startAngle + sweepAngle,
      colors: gradientColors,
    );

    final rect = Rect.fromCircle(center: center, radius: radius);

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
