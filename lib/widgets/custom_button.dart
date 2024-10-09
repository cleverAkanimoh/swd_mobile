import 'package:flutter/material.dart';
import 'package:swd_mobile/helpers/responsive.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.pink, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          transform: GradientRotation(45),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        minWidth: Responsive.width(context),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
