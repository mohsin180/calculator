import 'package:flutter/material.dart';

class Custominputfield extends StatelessWidget {
  const Custominputfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.deepPurple,
          filled: true,
        ),
        style: TextStyle(
          fontSize: 80,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        readOnly: true,
      ),
    );
  }
}
