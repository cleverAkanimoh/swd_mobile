import 'package:flutter/material.dart';
import 'package:swd_mobile/helpers/responsive.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          minWidth: Responsive.width(context),
          padding: const EdgeInsets.symmetric(vertical: 15),
          color: Colors.orange,
          shape: const StadiumBorder(),
          onPressed: () {},
          child: const Text(
            'Sign in',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I don't have an account,",
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Create account',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
