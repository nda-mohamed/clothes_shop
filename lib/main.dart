import 'package:clothes_shop/ui/screens/login/login_screen.dart';
import 'package:clothes_shop/ui/screens/onboarding/onboarding_screen.dart';
import 'package:clothes_shop/ui/screens/signup/signup_screen.dart';
import 'package:clothes_shop/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothes Shop',
      initialRoute: AppRoutes.SplashScreen.name,
      routes: {
        AppRoutes.SplashScreen.name: (context) => SplashScreen(),
        AppRoutes.OnboardingScreen.name: (context) => OnboardingScreen(),
        AppRoutes.LoginScreen.name: (context) => LoginScreen(),
        AppRoutes.SignupScreen.name: (context) => SignupScreen(),
      },
    );
  }
}