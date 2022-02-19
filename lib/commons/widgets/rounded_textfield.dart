import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seven_food_test/commons/constants/constants.dart';
import 'package:seven_food_test/res/app_colors.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key? key,
    this.hintText,
    this.obscureText,
    this.onPressed,
    this.icon,
    this.keyboardType,
    this.onChanged,
    this.inputFormatters,
    this.width,
    this.height,
    this.contentPaddingLeft,
    this.contentPaddingRight,
  }) : super(key: key);

  final String? hintText;
  final bool? obscureText;
  final void Function()? onPressed;
  final void Function(String)? onChanged;
  final Icon? icon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final double? width;
  final double? height;
  final double? contentPaddingLeft;
  final double? contentPaddingRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 56,
      width: width ?? double.infinity,
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
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              style: Constants.kTextFieldStyle,
              keyboardType: keyboardType,
              onChanged: onChanged,
              obscureText: obscureText == null ? false : obscureText!,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                    left: contentPaddingLeft == null
                        ? 20 : contentPaddingLeft!,
                    right: contentPaddingRight == null
                        ? 20
                        : contentPaddingRight!),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: Constants.kHintStyle,
              ),
            ),
          ),
          IconButton(
              padding: EdgeInsets.only(right: 20),
              onPressed: onPressed,
              icon: icon == null ? SizedBox() : icon!),
        ],
      ),
    );
  }
}
