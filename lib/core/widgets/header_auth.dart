import 'package:clothes_shop/core/app_color/app_color.dart';
import 'package:flutter/material.dart';

class HeaderAuth extends StatelessWidget {
  const HeaderAuth({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor,
          ),
        ),

        Text(
          subTitle,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: AppColor.gray2,
          ),
        ),
      ],
    );
  }
}
