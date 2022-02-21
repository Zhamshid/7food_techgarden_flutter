import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:seven_food_test/commons/widgets/rounded_textfield.dart';
import '../commons/widgets/custom_rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  static const id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _obscureText = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Регистрация в 7Food',
                  style: Constants.kHeaderTextStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Введите номер телефона, чтобы войти в приложение через СМС-код',
                  style: Constants.kHeader2TextStyle,
                ),
                SizedBox(height: 24),
                RoundedTextField(
                  hintText: 'Ваше имя',
                ),
                SizedBox(height: 12),
                RoundedTextField(
                  hintText: 'Номер телефона',
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    MaskedInputFormatter('+# ### ### ## ##'),
                  ],
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
                SizedBox(height: 12),
                RoundedTextField(
                  hintText: 'Повторите пароль',
                  obscureText: _obscureText2,
                  icon: Icon(
                    _obscureText2 == true
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.gray,
                  ),
                  onPressed: () {
                    setState(
                          () {
                        _obscureText2 = !_obscureText2;
                        print(_obscureText2);
                      },
                    );
                  },
                ),
                SizedBox(height: 210),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    'У меня уже есть акканут'.toUpperCase(),
                    style: Constants.kAccountInfoTextStyle,
                  ),
                ),
                SizedBox(height: 16),
                CustomRoundedButton(
                  colour: AppColors.primary.withOpacity(0.56),
                  title: 'Зарегистрировться',
                  widthButton: double.infinity,
                  heightButton: 56,
                  style: Constants.kOnBoardingButtonTextStyle,
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
