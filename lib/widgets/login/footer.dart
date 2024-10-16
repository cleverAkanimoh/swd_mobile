import 'package:flutter/material.dart';
import 'package:swd_mobile/helpers/navigator_push.dart';
import 'package:swd_mobile/screens/create_account.dart';
import 'package:swd_mobile/screens/home.dart';
import 'package:swd_mobile/widgets/custom_button.dart';
import 'package:swd_mobile/widgets/gradient_text.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            text: 'Sign in',
            onPressed: () => NavigatorPush.pushRemoveUntil(
                  page: const HomeScreen(),
                )),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I don't have an account,",
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
            TextButton(
              onPressed: () => NavigatorPush.push(
                context,
                const CreateAccountScreen(),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 4),
              ),
              child: const GradientText(
                text: "Create account",
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
