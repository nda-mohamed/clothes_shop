import 'package:clothes_shop/core/app_color/app_color.dart';
import 'package:flutter/material.dart';
import '../../../core/app_button/custom_app_button.dart';
import '../../../core/routes/app_route.dart';
import '../../../core/widgets/logo.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        spacing: 7,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Logo(
                logo: 'assets/logo_pink.png',
                color: AppColor.primaryColor,
              ),
            ),
          ),
          CustomAppButton(
            text: 'Create new acoount',
            color1: AppColor.primaryColor,
            color2: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.SignupScreen.name);
            },
          ),
          CustomAppButton(
            text: 'Login',
            color1: AppColor.gray1,
            color2: AppColor.gray2,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.LoginScreen.name);
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
