import 'package:flutter/material.dart';
import '../../../core/app_button/custom_app_button.dart';
import '../../../core/app_color/app_color.dart';
import '../../../core/routes/app_route.dart';
import '../../../core/widgets/auth_prompt.dart';
import '../../../core/widgets/custom_app_field.dart';
import '../../../core/widgets/header_auth.dart';
import '../../../core/widgets/password_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            HeaderAuth(title: 'Sign Up', subTitle: 'Create new acoount'),
            CustomAppField(hintText: 'EMAIL', icon: Icons.email_outlined),
            CustomAppField(hintText: 'USERNAME', icon: Icons.person_outline_rounded,),
            PasswordField(hintText: 'PASSWORD'),
            CustomAppButton(
              text: 'ok',
              color1: AppColor.primaryColor,
              color2: Colors.white,
              onPressed: () {},
            ),
            AuthPrompt(
              text1: 'Already have an account?',
              text2: 'Log in',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.LoginScreen.name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
