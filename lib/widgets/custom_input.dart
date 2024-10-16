import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String placeholder;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.placeholder,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " ${widget.labelText}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          obscureText: widget.isPassword ? _obscureText : false,
          keyboardType: widget.keyboardType,
          clipBehavior: Clip.antiAlias,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white.withOpacity(.7)),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            filled: true, // Enables background color
            fillColor:
                const Color.fromRGBO(41, 41, 41, 1), // Set the background color
            hintText: widget.placeholder,
            hintStyle: const TextStyle(
              color: Color.fromRGBO(164, 164, 164, 1),
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText =
                            !_obscureText; // Toggles the obscureText state
                      });
                    },
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromRGBO(81, 81, 81, 1),
                // width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.orange,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
