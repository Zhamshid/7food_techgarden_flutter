import 'package:flutter/material.dart';
import 'package:seven_food_test/constants.dart';
import 'package:seven_food_test/custom_rounded_button.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:seven_food_test/rounded_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Вход в 7Food',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Введите номер телефона и пароль',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: AppColors.darkGray,
                ),
              ),
              SizedBox(height: 24),
              RoundedTextField(
                hintText: 'Номер телефона',
              ),
              SizedBox(height: 12),
              RoundedTextField(
                hintText: 'Пароль',
              ),
              SizedBox(height: 24),
              Text(
                'Забыли пароль?'.toUpperCase(),
                style: TextStyle(
                  letterSpacing: 0.6,
                  fontSize: 14,
                  color: AppColors.gray,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 330),
              Text(
                'Зарегистрироваться'.toUpperCase(),
                style: TextStyle(
                  letterSpacing: 0.6,
                  fontSize: 14,
                  color: AppColors.gray,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              CustomRoundedButton(
                colour: AppColors.primary.withOpacity(0.56),
                title: 'войти',
                widthButton: double.infinity,
                heightButton: 56,
                style: Constants.kOnBoardingButtonTextStyle,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
