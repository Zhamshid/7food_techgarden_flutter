import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    Key? key, this.onPressed, this.heightButton, this.widthButton, this.colour, this.title, this.style,
  }) : super(key: key);

  final double? heightButton;
  final double? widthButton;
  final Color? colour;
  final String? title;
  final TextStyle? style;
  final void Function()? onPressed;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightButton,
      width: widthButton,
      decoration:BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(56),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title!.toUpperCase(),
          style: style,
        ),
      ),
    );
  }
}
