import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/commons/widgets/custom_rounded_button.dart';
import 'package:seven_food_test/commons/widgets/rounded_textfield.dart';
import 'package:seven_food_test/res/app_colors.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:seven_food_test/screens/confirm_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const id = 'forgot_password_screen';

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, top: 100, right: 24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Воостановить пароль',
                style: Constants.kHeaderTextStyle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Введите номер телефона для \n '
                'воостановления',
                style: Constants.kHeader2TextStyle,
              ),
              SizedBox(
                height: 24,
              ),
              RoundedTextField(
                hintText: 'Номер телефона',
                keyboardType: TextInputType.phone,
                onChanged: (value){
                  phoneNumber = value;
                },
                onPressed: (){
                  Navigator.pushNamed(context, ConfirmScreen.id);
                },
                inputFormatters: [
                  MaskedInputFormatter('+# ### ### ## ##'),
                ],
              ),
              SizedBox(
                height: 446,
              ),
              CustomRoundedButton(
                title: 'Воостановить',
                colour: AppColors.primary,
                style: Constants.kOnBoardingButtonTextStyle,
                heightButton: 56,
                widthButton: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, ConfirmScreen.id,arguments: phoneNumber);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
