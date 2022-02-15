import 'package:flutter/material.dart';
import 'package:seven_food_test/constants.dart';
import 'package:seven_food_test/res/app_colors.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ]),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText!,
          hintStyle: kHintStyle,
        ),
      ),
    );
  }
}
