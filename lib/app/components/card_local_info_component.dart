import 'package:flutter/material.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

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
    Size screenSize = MediaQuery.of(context).size;
    return Text.rich(
      TextSpan(
          style: TextStyle(
            backgroundColor: AppColors.transparent,
            fontFamily: ifTruePoppinsElseLato ? "Poppins" : "Lato",
            fontSize: screenSize.width >= 481 ? 6.sp : size,
            color: colorLabel,
          ),
          text: label,
          children: [
            TextSpan(
              style: TextStyle(
                backgroundColor: AppColors.transparent,
                fontFamily: ifTruePoppinsElseLato ? "Poppins" : "Lato",
                fontSize: screenSize.width >= 481 ? 5.sp : size,
                color: colorContent,
              ),
              text: content,
            ),
          ]),
    );
  }
}
