import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

class CardDescriptionComponent extends StatelessWidget {
  final String description;
  const CardDescriptionComponent({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: screenSize.width >= 481 ? 400 : 280.8,
        decoration: BoxDecoration(
            color: AppColors.black, borderRadius: BorderRadius.circular(7.2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.description_outlined,
                  color: Colors.white,
                  size: screenSize.width >= 481 ? 20 : 14,
                ),
                CustomTextComponent(
                    content: "Descrição:",
                    size: screenSize.width >= 481 ? 20 : 14,
                    color: AppColors.white,
                    ifTruePoppinsElseLato: false),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextComponent(
                content: description,
                size: screenSize.width >= 481 ? 5.sp : 12,
                color: AppColors.white,
                alignment: TextAlign.justify,
                ifTruePoppinsElseLato: false)
          ],
        ),
      ),
    );
  }
}
