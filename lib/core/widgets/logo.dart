import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.logo, required this.color});

  final String logo;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(logo),
        Text(
          'Clothes Shop',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
        Text(
          'Find What You Want',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ],
    );
  }
}
