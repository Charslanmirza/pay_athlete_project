import 'package:flutter/material.dart';
import 'package:signup_with_provider/constrants.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  const CustomElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.color,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width(context) * 0.9, 60),
        primary: color,
        textStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
