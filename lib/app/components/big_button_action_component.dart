import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors.dart';
import 'package:page_transition/page_transition.dart';

class BigButtonActionComponent extends StatelessWidget {
  final String label;
  final Color backgroundColor, borderColor;
  final double borderRadius, fontSize;
  final Widget pageToNavigate;
  const BigButtonActionComponent(
      {super.key,
      required this.label,
      required this.backgroundColor,
      required this.borderRadius,
      required this.borderColor,
      required this.pageToNavigate,
      required this.fontSize});

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
                Navigator.push(
                    context,
                    PageTransition(
                        duration: const Duration(milliseconds: 400),
                        type: PageTransitionType.rightToLeft,
                        child: pageToNavigate));
              },
              child: CustomTextComponent(
                  content: label,
                  size: fontSize,
                  color: AppColors.white,
                  ifTruePoppinsElseLato: true)),
        ),
      ],
    );
  }
}
