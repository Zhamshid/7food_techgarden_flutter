import 'package:flutter/material.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/res/app_colors.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key? key,
    required this.hintText,
    this.obscureText,
  }) : super(key: key);

  final String? hintText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(56.0),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.6),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        style: Constants.kTextFieldStyle,
        obscureText:obscureText == null? false : obscureText!,
        inputFormatters: [],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20,right: 20),
          border: InputBorder.none,
          hintText: hintText!,
          hintStyle: Constants.kHintStyle,
        ),
      ),
    );
  }
}
