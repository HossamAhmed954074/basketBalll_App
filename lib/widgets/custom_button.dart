import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Size size;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = Colors.orange,
    this.textColor = Colors.black,
    this.size = const Size(100, 50),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: size,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: textColor),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const CustomText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
