import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle style;

  const GradientText({
    super.key,
    required this.text,
    this.gradient = const LinearGradient(
      colors: [
        Color.fromRGBO(239, 88, 88, 1),
        Color.fromRGBO(239, 88, 88, 1),
        Color.fromRGBO(239, 160, 88, 1),
      ],
    ),
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(
        text,
        style: style.copyWith(
            color: Colors
                .white), // The color is ignored since the gradient is applied
      ),
    );
  }
}
