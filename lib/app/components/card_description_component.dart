import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CardDescriptionComponent extends StatelessWidget {
  Color cor;
  final double borderRadius;
  final String titulo;
  final String description;
  CardDescriptionComponent(
      {super.key,
      required this.description,
      this.cor = AppColors.white,
      required this.titulo,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: screenSize.width >= 481 ? 400 : 280.8,
        decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.description_outlined,
                  color: Colors.white,
                  size: screenSize.width >= 481 ? 7.sp : 14,
                ),
                CustomTextComponent(
                    content: titulo,
                    size: screenSize.width >= 481 ? 7.sp : 14,
                    color: cor,
                    ifTruePoppinsElseLato: false),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextComponent(
                content: description,
                size: screenSize.width >= 481 ? 6.sp : 12,
                color: AppColors.white,
                alignment: TextAlign.justify,
                ifTruePoppinsElseLato: false)
          ],
        ),
      ),
    );
  }
}
