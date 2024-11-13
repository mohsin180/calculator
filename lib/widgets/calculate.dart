import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  const Calculate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 70,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 83, 58, 122),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text(
        "=",
        style: TextStyle(
            color: Color.fromARGB(255, 240, 7, 26),
            fontSize: 50,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
