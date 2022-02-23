import 'dart:async';

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

  String _timeToShow = "00:10";
  int? minutes;
  int? seconds;

  void leftTime() {
    late Timer timer;
    int startSeconds = 10; //time limit
    timer = Timer.periodic(
      Duration(seconds: 1),
      (time) {
        startSeconds = startSeconds - 1;
        setState(() {
          if (startSeconds == 0) {
            _isTimeVisible = false;
            _isSendAgainVisible = true;
            timer.cancel();
          }
        });
        setState(() {
          minutes = startSeconds ~/ 60;
          seconds = (startSeconds % 60);
          _timeToShow = minutes.toString().padLeft(2, "0") +
              ":" +
              seconds.toString().padLeft(2, "0");
          print(_timeToShow);
        });
      },
    );
  }

  @override
  void initState() {
    leftTime();
    super.initState();
  }

  @override
  void dispose() {
    leftTime();
    super.dispose();
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
                  'Вы можете отправить код повторно \nчерез:$_timeToShow',
                  style: Constants.kHeader2TextStyle,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Visibility(
                visible: _isSendAgainVisible,
                child: Text(
                  'Отправить код повторно'.toUpperCase(),
                  style: Constants.kSendAgainTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
