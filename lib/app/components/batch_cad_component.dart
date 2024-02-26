import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class BatchCardComponent extends StatelessWidget {
  final String imagePath, centeredTitle, bottomTitle;
  const BatchCardComponent(
      {super.key,
      required this.imagePath,
      required this.centeredTitle,
      required this.bottomTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.85),
                topRight: Radius.circular(6.85))),
        height: 365.6,
        width: 280.8,
        child: Column(
          children: [
            Image.asset(imagePath),
            Container(
              width: 280.8,
              height: 45.7,
              color: AppColors.yellow,
              child: Center(
                child: CustomTextComponent(
                    content: centeredTitle,
                    size: 14.43,
                    color: AppColors.white,
                    ifTruePoppinsElseLato: false),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6.85),
                      bottomRight: Radius.circular(6.85))),
              width: 280.8,
              height: 45.7,
              child: Center(
                child: CustomTextComponent(
                    content: bottomTitle,
                    size: 14.43,
                    color: AppColors.white,
                    ifTruePoppinsElseLato: false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
