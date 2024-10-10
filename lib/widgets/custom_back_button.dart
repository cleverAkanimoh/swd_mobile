import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: const Row(
        children: [
          Icon(
            Icons.chevron_left,
            color: Color.fromRGBO(185, 185, 185, 1),
            size: 24,
          ),
          SizedBox(width: 10),
          Text(
            "Back",
            style: TextStyle(
              color: Color.fromRGBO(185, 185, 185, 1),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
