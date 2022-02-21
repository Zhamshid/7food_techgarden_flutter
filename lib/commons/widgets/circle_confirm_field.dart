import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/res/app_colors.dart';

class CircleConfirmField extends StatelessWidget {
  const CircleConfirmField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 72.75,
      height: 72.75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(56),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.6),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        keyboardType: TextInputType.phone,
        style: Constants.kCircleFieldStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),

      ),
    );
  }
}
