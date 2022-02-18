import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/commons/widgets/custom_rounded_button.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:seven_food_test/commons/widgets/rounded_textfield.dart';
import 'package:seven_food_test/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Вход в 7Food',
                  style: Constants.kHeaderTextStyle,
                ),
                Text(
                  'Введите номер телефона и пароль',
                  style: Constants.kHeader2TextStyle,
                ),
                SizedBox(height: 24),
                RoundedTextField(
                  hintText: 'Номер телефона',
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 12),
                RoundedTextField(
                  hintText: 'Пароль',
                  obscureText: _obscureText,
                  icon: Icon(
                    _obscureText == true
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.gray,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        _obscureText = !_obscureText;
                        print(_obscureText);
                      },
                    );
                  },
                ),
                SizedBox(height: 24),
                Text(
                  'Забыли пароль?'.toUpperCase(),
                  style: Constants.kAccountInfoTextStyle,
                ),
                SizedBox(height: 330),
                Text(
                  'Зарегистрироваться'.toUpperCase(),
                  style: Constants.kAccountInfoTextStyle,
                ),
                SizedBox(height: 16),
                CustomRoundedButton(
                  colour: AppColors.primary.withOpacity(0.56),
                  title: 'войти',
                  widthButton: double.infinity,
                  heightButton: 56,
                  style: Constants.kOnBoardingButtonTextStyle,
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
