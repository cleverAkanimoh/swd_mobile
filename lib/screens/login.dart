import 'package:flutter/material.dart';
import '../widgets/login/header.dart';
import '../widgets/login/form.dart';
import '../widgets/login/footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(),
          const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            child: _LoginContent(),
          ),
        ],
      ),
    );
  }
}

Widget buildBackground() {
  return Positioned(
    right: 0,
    child: Image.asset("assets/images/grad.png", fit: BoxFit.cover),
  );
}

class _LoginContent extends StatelessWidget {
  const _LoginContent();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 120), // adjust based on header size
        LoginHeader(), // Header section (icon and welcome text)
        SizedBox(height: 40),
        LoginForm(), // Email & Password fields
        SizedBox(height: 30),
        LoginFooter(), // Buttons (sign-in, forgot password, etc.)
        SizedBox(height: 50), // Optional, adds extra space at the bottom
      ],
    );
  }
}
