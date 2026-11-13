import 'package:flutter/material.dart';
import '../../../core/app_button/custom_app_button.dart';
import '../../../core/app_color/app_color.dart';
import '../../../core/routes/app_route.dart';
import '../../../core/widgets/auth_prompt.dart';
import '../../../core/widgets/custom_app_field.dart';
import '../../../core/widgets/header_auth.dart';
import '../../../core/widgets/password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.OnboardingScreen.name);
          },
          child: Icon(Icons.arrow_back_ios, color: AppColor.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderAuth(title: 'Login', subTitle: 'Enter your information'),
            CustomAppField(hintText: 'EMAIL', icon: Icons.email_outlined),
            PasswordField(hintText: 'PASSWORD'),
            CustomAppButton(
              text: 'Login',
              color1: AppColor.primaryColor,
              color2: Colors.white,
              onPressed: () {},
            ),
            AuthPrompt(
              text1: 'Do not have an account?',
              text2: 'Sign up',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.SignupScreen.name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
