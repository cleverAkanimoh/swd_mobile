import 'package:flutter/material.dart';
import 'package:swd_mobile/widgets/custom_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          labelText: "Enter Email address",
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        const CustomTextField(labelText: "Enter Password", isPassword: true),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
