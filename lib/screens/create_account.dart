import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swd_mobile/helpers/navigator_push.dart';
import 'package:swd_mobile/helpers/responsive.dart';
import 'package:swd_mobile/screens/login.dart';
import 'package:swd_mobile/widgets/custom_button.dart';
import 'package:swd_mobile/widgets/gradient_text.dart';
import '../widgets/custom_input.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Row(
            children: [
              Icon(Icons.chevron_left, color: Colors.grey.shade400),
              Text(
                "Back",
                style: TextStyle(color: Colors.grey.shade400),
              ),
            ],
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          TextButton(
            onPressed: () =>
                NavigatorPush.pushReplace(page: const LoginScreen()),
            child: Column(
              children: [
                const GradientText(
                  text: "Sign in instead",
                  style: TextStyle(),
                ),
                const SizedBox(height: 3),
                Container(
                    height: 4,
                    width: 100,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.orange],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        transform: GradientRotation(45),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    placeholder: 'Enter First name',
                    labelText: 'First name',
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: CustomTextField(
                    placeholder: 'Enter Last name',
                    labelText: 'Last name',
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              placeholder: 'Enter Phone number',
              labelText: 'Phone number',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              placeholder: 'Enter Email address',
              labelText: 'Email address',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              placeholder: 'Enter Create Password',
              labelText: 'Create Password',
              isPassword: true,
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              placeholder: 'Enter Referral Code (Optional)',
              labelText: 'Referral Code (Optional)',
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 30),
            CustomButton(text: "Next", onPressed: () {}),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Account information',
                style: TextStyle(color: Colors.white54),
              ),
            ),
            const SizedBox(
                height:
                    20), // Extra spacing to avoid text clipping when keyboard appears
          ],
        ),
      ),
    );
  }
}
