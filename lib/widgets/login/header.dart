import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.person_outline,
          size: 100,
          color: Colors.white.withOpacity(0.7), // Profile icon
        ),
        const SizedBox(height: 20),
        const Text(
          'Welcome back 👋',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
