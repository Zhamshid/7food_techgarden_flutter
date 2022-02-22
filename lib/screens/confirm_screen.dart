import 'package:flutter/material.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/commons/widgets/circle_confirm_field.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  static const id = "confirm_screen";

  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  bool _isTimeVisible = true;
  bool _isSendAgainVisible = false;

  // String? intToTimeLeft(int value) {
  //   int m;
  //   int s;
  //   String? minuteLeft;
  //   String? secondsLeft;
  //   String? result;
  //
  //   setState(() {
  //     if (value > 0) {
  //
  //       m = value ~/ 60;
  //       s = value - (m * 60);
  //
  //       value--;
  //       minuteLeft =
  //           m.toString().length < 2 ? "0" + m.toString() : m.toString();
  //       secondsLeft =
  //           s.toString().length < 2 ? "0" + s.toString() : s.toString();
  //       result = "$minuteLeft:$secondsLeft";
  //
  //       print(result);
  //     }
  //     else{
  //       _isTimeVisible = false;
  //     }
  //
  //   });
  //   return result;
  // }

  int _countdownTime = 60;
  String? _result;

  void startTimer() {
    if (_countdownTime == 0) {
      setState(
        () {
          _isTimeVisible = false;
          _isSendAgainVisible = true;
        },
      );
    } else {
      setState(
        () {
          _isTimeVisible = true;
          _isSendAgainVisible = false;
          _countdownTime = _countdownTime - 1;
          int minutes = _countdownTime ~/ 60;
          int seconds = (_countdownTime % 60);
          _result = minutes.toString().padLeft(2, "0") +
              ":" +
              seconds.toString().padLeft(2, "0");

        },
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final phoneNumber = arg['phoneNumber'];
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
                'Введите СМС-код, отправленный \n на номер чтобы $phoneNumber',
                style: Constants.kHeader2TextStyle,
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Flexible(
                      child: CircleConfirmField(),
                    ),
                    Flexible(
                      child: CircleConfirmField(),
                    ),
                    Flexible(
                      child: CircleConfirmField(),
                    ),
                    Flexible(
                      child: CircleConfirmField(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Visibility(
                visible: _isTimeVisible,
                child: Text(
                  'Вы можете отправить код повторно \nчерез: $_result',
                  style: Constants.kHeader2TextStyle,
                ),
              ),
              Visibility(
                visible: _isSendAgainVisible,
                child: Text(
                  'Send again',
                  style: Constants.kHeader2TextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
