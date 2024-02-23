import 'package:flutter/material.dart';

class PoppinsTextComponent extends StatelessWidget {
  final String content;
  final double size;
  final Color color;
  const PoppinsTextComponent(
      {super.key,
      required this.content,
      required this.size,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(fontFamily: "Poppins", fontSize: size, color: color),
      textAlign: TextAlign.center,
    );
  }
}
