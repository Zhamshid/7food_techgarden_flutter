import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/commons/widgets/custom_rounded_button.dart';
import 'package:seven_food_test/commons/widgets/rounded_textfield.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:seven_food_test/screens/forgot_password_screen.dart';
import 'package:seven_food_test/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  String? phoneNumber;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                style: Constants.kHeaderTextStyle,
              ),
              Text(
                'Введите номер телефона и пароль',
                style: Constants.kHeader2TextStyle,
              ),
              SizedBox(height: 24),
              RoundedTextField(
                hintText: 'Номер телефона',
                inputFormatters: [
                  MaskedInputFormatter('+# ### ### ## ##'),
                ],
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  phoneNumber = value;
                  print(phoneNumber);
                },
              ),
              SizedBox(height: 12),
              RoundedTextField(
                hintText: 'Пароль',
                obscureText: _obscureText,
                onChanged: (value) {
                  password = value;
                  print(password);
                },
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.id);
                },
                child: Text(
                  'Забыли пароль?'.toUpperCase(),
                  style: Constants.kAccountInfoTextStyle,
                ),
              ),
              SizedBox(height: 330),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                child: Text(
                  'Зарегистрироваться'.toUpperCase(),
                  style: Constants.kAccountInfoTextStyle,
                ),
              ),
              SizedBox(height: 16),
              CustomRoundedButton(
                colour: phoneNumber != null && password != null
                    ? AppColors.primary
                    : AppColors.primary.withOpacity(0.56),
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
    );
  }
}
