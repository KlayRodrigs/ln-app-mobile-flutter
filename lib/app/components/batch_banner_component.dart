import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

class BatchBannerComponent extends StatelessWidget {
  final String imagePath, centeredTitle, bottomTitle;
  const BatchBannerComponent(
      {super.key,
      required this.imagePath,
      required this.centeredTitle,
      required this.bottomTitle});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.85),
                topRight: Radius.circular(6.85))),
        width: screenSize.width >= 481 ? 400 : 280.8,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: screenSize.width >= 481 ? 400 : 280.8,
              fit: BoxFit.fill,
            ),
            Container(
              width: screenSize.width >= 481 ? double.infinity : 280.8,
              height: screenSize.width >= 481 ? 20.sp : 45.7,
              color: AppColors.yellow,
              child: Center(
                child: CustomTextComponent(
                    content: centeredTitle,
                    size: screenSize.width >= 481 ? 6.sp : 14.43,
                    color: AppColors.white,
                    ifTruePoppinsElseLato: false),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6.85),
                      bottomRight: Radius.circular(6.85))),
              child: Center(
                child: CustomTextComponent(
                    alignment: TextAlign.justify,
                    content: bottomTitle,
                    size: screenSize.width >= 481 ? 6.sp : 14.43,
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
