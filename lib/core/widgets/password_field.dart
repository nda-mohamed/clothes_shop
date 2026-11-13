import 'package:flutter/material.dart';

import 'custom_app_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.hintText});

  final String hintText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return CustomAppField(
      hintText: widget.hintText,
      icon: Icons.lock_outline,
      obscureText: !isPasswordVisible,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible;
          });
        },
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off_outlined,
          color: Colors.grey,
        ),
      ),
    );
  }
}
