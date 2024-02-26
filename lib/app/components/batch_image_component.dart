import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class BatchImage extends StatelessWidget {
  final String batchName, imagePath;
  final int amount;
  const BatchImage(
      {super.key,
      required this.batchName,
      required this.imagePath,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9.52),
      child: Stack(
        children: [
          Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(3.74),
            child: Image.asset(
              imagePath,
              width: 280.8,
              height: 280.8,
            ),
          )),
          Center(
            child: Container(
              width: 280.8,
              height: 63.65,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3.74)),
                  gradient: LinearGradient(
                      colors: [AppColors.black, AppColors.transparent],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      stops: [0.1, 1])),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextComponent(
                        content: batchName,
                        size: 12.2,
                        color: AppColors.white,
                        ifTruePoppinsElseLato: false,
                        weight: FontWeight.w900,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/cow.png",
                            color: AppColors.white,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          CustomTextComponent(
                              content: "$amount Fêmeas",
                              size: 9.98,
                              color: AppColors.white,
                              ifTruePoppinsElseLato: true)
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
