import 'package:flutter/material.dart';
import '../app_color/app_color.dart';

class CustomAppField extends StatelessWidget {
  const CustomAppField({
    super.key,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
  });

  final String hintText;
  final IconData icon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 8, left: 10),
          child: Icon(icon, color: AppColor.gray3),
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color:AppColor.gray3,
        ),
        filled: true,
        fillColor: Color(0xFFFFFFFF),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColor.primaryColor, width: 2),
        ),
      ),
    );
  }
}
