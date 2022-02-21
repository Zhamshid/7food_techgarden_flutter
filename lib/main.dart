import 'package:flutter/material.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:seven_food_test/screens/confirm_screen.dart';
import 'package:seven_food_test/screens/forgot_password_screen.dart';
import 'package:seven_food_test/screens/login_screen.dart';
import 'package:seven_food_test/screens/onboarding.dart';
import 'package:seven_food_test/screens/registration_screen.dart';

void main() => runApp(const SevenFood());

class SevenFood extends StatelessWidget {
  const SevenFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primary,
        platform: TargetPlatform.iOS,
      ),
      initialRoute: OnBoarding.id,
      routes: {
        OnBoarding.id: (context) => const OnBoarding(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        ConfirmScreen.id: (context) => const ConfirmScreen(),
      },
    );
  }
}
