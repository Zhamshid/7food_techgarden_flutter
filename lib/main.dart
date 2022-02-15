import 'package:flutter/material.dart';
import 'package:seven_food_test/constants.dart';
import 'package:seven_food_test/next_button.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:seven_food_test/screens/login_screen.dart';
import 'package:seven_food_test/screens/registration_screen.dart';

void main() => runApp(const SevenFood());

class SevenFood extends StatelessWidget {
  const SevenFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
      },
      home: Scaffold(
        backgroundColor: const Color(0xFF041538),
        body: RoundedButton(
          color: AppColors.primary,
          onPressed: () {
            Navigator.pushNamed(context, LoginScreen.id);
          },
        ),
      ),
    );
  }
}
