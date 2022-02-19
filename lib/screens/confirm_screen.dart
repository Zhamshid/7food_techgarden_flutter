import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/commons/widgets/rounded_textfield.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);
  static const id = "confirm_screen";

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 24, right: 24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Потверждение',
                style: Constants.kHeaderTextStyle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Введите СМС-код, отправленный \n на номер чтобы +7 771 973 17 17',
                style: Constants.kHeader2TextStyle,
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Flexible(
                      child: RoundedTextField(
                        width: 73,
                        height: 73,
                        contentPaddingLeft: 1,
                        contentPaddingRight: 1,
                      ),
                    ),
                    Flexible(
                      child: RoundedTextField(
                        width: 73,
                        height: 73,
                        contentPaddingLeft: 1,
                        contentPaddingRight: 1,
                      ),
                    ),
                    Flexible(
                      child: RoundedTextField(
                        width: 73,
                        height: 73,
                        contentPaddingLeft: 1,
                        contentPaddingRight: 1,
                      ),
                    ),
                    Flexible(
                      child: RoundedTextField(
                        width: 73,
                        height: 73,
                        contentPaddingLeft: 1,
                        contentPaddingRight: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
