import 'package:flutter/material.dart';
import 'constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: color!),
            borderRadius: BorderRadius.circular(56.0),
          ),
          child: Row(
            children: const <Widget>[
              Expanded(
                child: Text(
                  'ДАЛЕЕ',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
