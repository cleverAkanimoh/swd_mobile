import 'package:flutter/material.dart';
import '../widgets/login/header.dart';
import '../widgets/login/form.dart';
import '../widgets/login/footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            LoginHeader(), // Header section (icon and welcome text)
            SizedBox(height: 40),
            LoginForm(), // Email & Password fields
            SizedBox(height: 30),
            LoginFooter(), // Buttons (sign-in, forgot password, etc.)
            Spacer(),
          ],
        ),
      ),
    );
  }
}
