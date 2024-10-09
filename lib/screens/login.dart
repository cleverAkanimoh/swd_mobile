import 'package:flutter/material.dart';
import '../widgets/login/header.dart';
import '../widgets/login/form.dart';
import '../widgets/login/footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                SizedBox(height: 150), // Optional, adjust based on header size
                LoginHeader(), // Header section (icon and welcome text)
                SizedBox(height: 40),
                LoginForm(), // Email & Password fields
                SizedBox(height: 30),
                LoginFooter(), // Buttons (sign-in, forgot password, etc.)
                SizedBox(
                    height: 50), // Optional, adds extra space at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
