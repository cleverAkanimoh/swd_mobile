import 'package:flutter/material.dart';
import 'package:swd_mobile/helpers/navigator_push.dart';
import 'package:swd_mobile/screens/home.dart';
import 'package:swd_mobile/screens/login.dart';
import 'package:swd_mobile/widgets/custom_back_button.dart';
import '../widgets/custom_button.dart';
import 'create_account.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  late final List<FocusNode> _focusNodes;
  late final List<TextEditingController> _otpControllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(6, (_) => FocusNode());
    _otpControllers = List.generate(6, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const currentProgress = 2;
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(),
          Container(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24,
              top: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                const SizedBox(height: 20),
                _buildHeader(),
                const SizedBox(height: 40),
                _buildOtpRow(),
                const Spacer(),
                CustomButton(
                  text: 'Verify email',
                  onPressed: () => NavigatorPush.pushRemoveUntil(
                    page: const HomeScreen(),
                  ),
                ),
                const SizedBox(height: 35),
                buildProgressIndicators(currentProgress),
                const SizedBox(height: 15),
                _buildFooter(),
                const SizedBox(height: 35),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Verify your email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 29,
            fontWeight: FontWeight.w200,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Please enter the OTP sent to',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'tolu.ab19@gmail.com',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildOtpRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(3, (index) => _buildOtpBox(index)),
        const Text(
          "-",
          style: TextStyle(color: Colors.white),
        ),
        ...List.generate(3, (index) => _buildOtpBox(index + 3)),
      ],
    );
  }

  Widget _buildOtpBox(int index) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(color: Colors.white30),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: _otpControllers[index],
        focusNode: _focusNodes[index],
        onChanged: (value) => _handleOtpInput(value, index),
        cursorColor: Colors.white,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, color: Colors.white),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
      ),
    );
  }

  void _handleOtpInput(String value, int index) {
    if (value.isNotEmpty && index < 5) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    } else if (index == 5) {
      FocusScope.of(context).unfocus();
    }
  }

  Widget _buildFooter() {
    return const Center(
      child: Text(
        'Email verification',
        style: TextStyle(color: Colors.white54, fontSize: 14),
      ),
    );
  }
}
