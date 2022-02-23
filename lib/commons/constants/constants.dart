import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:seven_food_test/res/app_colors.dart';

class Constants {
  static const String manropeFont = 'Manrope';

  static const kButtonTextStyle = TextStyle(
    fontFamily: manropeFont,
    fontSize: 20,
    color: Colors.white,
    letterSpacing: 2,
    fontWeight: FontWeight.w700,
  );
  static const kHintStyle = TextStyle(
    fontSize: 18,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
    fontFamily: manropeFont,
    letterSpacing: 0.2,
  );

  static const kTextFieldStyle = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
    fontFamily: manropeFont,
    letterSpacing: 0.2,
  );

  static const kHeaderTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    fontFamily: manropeFont,
    color: AppColors.black,
  );

  static const kCircleFieldStyle = TextStyle(
    color: AppColors.black,
    fontFamily: manropeFont,
    fontSize: 36,
    fontWeight: FontWeight.w700,
  );

  static const kHeader2TextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    fontFamily: 'Manrope',
    color: AppColors.darkGray,
  );

  static const kAccountInfoTextStyle = TextStyle(
    letterSpacing: 0.6,
    fontSize: 14,
    fontFamily: 'Manrope',
    color: AppColors.gray,
    fontWeight: FontWeight.w600,
  );

  static const kOnBoardingButtonTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      letterSpacing: 0.8,
      fontFamily: 'Manrope');

  static const kSendAgainTextStyle = TextStyle(
    color: AppColors.primary,
    fontFamily: manropeFont,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.6,
  );
}
