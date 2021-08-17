import 'package:flutter/material.dart';

class ExtendedButton extends StatelessWidget {
  final Color color;
  final String label;
  final VoidCallback onPressed;


  ExtendedButton(
      {required this.onPressed, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: color,
            onPrimary: Colors.white
          ),
          child: Text(label, style: TextStyle(fontSize: 18.0),)),
    );
  }
}
