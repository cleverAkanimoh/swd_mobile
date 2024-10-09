import 'package:flutter/material.dart';
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
    int currentProgress = 1;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: _buildFormContent(currentProgress),
      ),
    );
  }

  /// Builds the AppBar with back button and "Sign in instead" text.
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: _buildBackButton(),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [
        _buildSignInInsteadAction(context),
      ],
    );
  }

  /// Builds the back button in the AppBar.
  Row _buildBackButton() {
    return Row(
      children: [
        Icon(Icons.chevron_left, color: Colors.grey.shade400),
        Text(
          "Back",
          style: TextStyle(color: Colors.grey.shade400),
        ),
      ],
    );
  }

  /// Builds the "Sign in instead" action text in the AppBar.
  Widget _buildSignInInsteadAction(BuildContext context) {
    return TextButton(
      onPressed: () => NavigatorPush.pushReplace(page: const LoginScreen()),
      child: Column(
        children: [
          const GradientText(
            text: "Sign in instead",
            style: TextStyle(),
          ),
          const SizedBox(height: 3),
          _buildGradientLine(),
        ],
      ),
    );
  }

  /// Builds the gradient underline for "Sign in instead" action.
  Container _buildGradientLine() {
    return Container(
      height: 2,
      width: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          transform: GradientRotation(45),
        ),
      ),
    );
  }

  /// Builds the main form content.
  Column _buildFormContent(int currentProgress) {
    return Column(
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
        _buildNameFields(),
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
        const SizedBox(height: 40),
        _buildProgressIndicators(currentProgress),
        const SizedBox(height: 15),
        const Center(
          child: Text(
            'Account information',
            style: TextStyle(color: Colors.white54, fontSize: 14),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  /// Builds the name fields (first name and last name).
  Row _buildNameFields() {
    return const Row(
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
    );
  }

  /// Builds the progress indicators below the form.
  Row _buildProgressIndicators(int currentProgress) {
    return Row(
      children: [
        ProgressBar(currentProgress: currentProgress, progressId: 1),
        const SizedBox(width: 6),
        ProgressBar(currentProgress: currentProgress, progressId: 2),
      ],
    );
  }
}

/// ProgressBar widget shows the current progress state.
class ProgressBar extends StatelessWidget {
  final int progressId;
  final int currentProgress;

  const ProgressBar({
    super.key,
    required this.progressId,
    required this.currentProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: Durations.medium4,
        height: 4,
        width: Responsive.width(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: currentProgress >= progressId ? Colors.white : Colors.white38,
        ),
      ),
    );
  }
}
