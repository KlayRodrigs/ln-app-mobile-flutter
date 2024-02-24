import 'package:flutter/material.dart';
import 'package:ln_app/app/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomTextComponent extends StatelessWidget {
  final String content;
  final double size;
  final Color color;
  final bool ifTruePoppinsElseLato;
  FontWeight weight;
  CustomTextComponent(
      {super.key,
      this.weight = FontWeight.normal,
      required this.content,
      required this.size,
      required this.color,
      required this.ifTruePoppinsElseLato});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
          backgroundColor: AppColors.transparent,
          fontFamily: ifTruePoppinsElseLato ? "Poppins" : "Lato",
          fontSize: size,
          color: color,
          fontWeight: weight),
      textAlign: TextAlign.center,
    );
  }
}
