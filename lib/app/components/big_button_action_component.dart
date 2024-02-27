import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

// ignore: must_be_immutable
class BigButtonActionComponent extends StatelessWidget {
  final String label;
  final Color backgroundColor, borderColor;
  final double borderRadius, fontSize;
  final bool ifTruePoppinsElseLato;
  final void Function() onTap;
  Color fontColor;
  BigButtonActionComponent(
      {super.key,
      this.fontColor = AppColors.white,
      required this.label,
      required this.backgroundColor,
      required this.borderRadius,
      required this.borderColor,
      required this.onTap,
      required this.fontSize,
      required this.ifTruePoppinsElseLato});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                  fixedSize:
                      const MaterialStatePropertyAll(Size(double.infinity, 50)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      side: BorderSide(
                        color: borderColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(borderRadius))),
                  backgroundColor: MaterialStatePropertyAll(backgroundColor)),
              onPressed: () {
                onTap();
              },
              child: CustomTextComponent(
                  content: label,
                  size: fontSize,
                  color: fontColor,
                  ifTruePoppinsElseLato: ifTruePoppinsElseLato)),
        ),
      ],
    );
  }
}
