import 'package:flutter/material.dart';
import 'package:swd_mobile/widgets/custom_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          labelText: "Email address",
          placeholder: "Enter Email address",
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        const CustomTextField(
            labelText: "Password",
            placeholder: "Enter Password",
            isPassword: true),
        const SizedBox(height: 6),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            style: const ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.zero)),
            child: Text(
              ' Forgot password?',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
