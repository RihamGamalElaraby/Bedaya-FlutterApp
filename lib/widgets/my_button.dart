import 'package:flutter/material.dart';

class mysignin extends StatelessWidget {
  mysignin({
    required this.color,
    required this.title,
    required this.onPressed,
    this.x = Colors.white,
    this.size = 30,
  });
  final Color color;
  final String title;
  final VoidCallback onPressed;
  Color x = Colors.black;
  double size = 30;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 100,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 250,
          height: 50,
          child: Text(
            title,
            style: TextStyle(
                fontSize: size, fontWeight: FontWeight.bold, color: x),
          ),
        ),
      ),
    );
  }
}
