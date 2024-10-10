import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(30, 30, 30, 1),
              borderRadius: BorderRadius.circular(8)),
        ),
        const SizedBox(height: 20),
        const Text(
          'Welcome back 👋🏽',
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
