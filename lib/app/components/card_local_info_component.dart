import 'package:flutter/material.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class CardLocalInfoComponent extends StatelessWidget {
  final String label, content;
  final double size;
  final Color colorLabel, colorContent;
  final bool ifTruePoppinsElseLato;
  const CardLocalInfoComponent(
      {super.key,
      required this.label,
      required this.size,
      required this.colorLabel,
      required this.colorContent,
      required this.ifTruePoppinsElseLato,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          style: TextStyle(
            backgroundColor: AppColors.transparent,
            fontFamily: ifTruePoppinsElseLato ? "Poppins" : "Lato",
            fontSize: size,
            color: colorLabel,
          ),
          text: label,
          children: [
            TextSpan(
              style: TextStyle(
                backgroundColor: AppColors.transparent,
                fontFamily: ifTruePoppinsElseLato ? "Poppins" : "Lato",
                fontSize: size,
                color: colorContent,
              ),
              text: content,
            ),
          ]),
    );
  }
}
