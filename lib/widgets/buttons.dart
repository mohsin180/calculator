import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    this.textColor = Colors.white,
  });
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 40,
        backgroundColor: const Color.fromARGB(255, 83, 58, 122),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ));
  }
}
