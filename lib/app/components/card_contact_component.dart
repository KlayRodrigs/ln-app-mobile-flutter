import 'package:flutter/material.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class CardContactComponent extends StatelessWidget {
  final String phone;
  const CardContactComponent({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
          padding: const EdgeInsets.all(20),
          width: 280.8,
          decoration: BoxDecoration(
              color: AppColors.black, borderRadius: BorderRadius.circular(7.2)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Image.asset("assets/images/wpp_icon.png"),
                  CustomTextComponent(
                      content: phone,
                      size: 12,
                      color: AppColors.white,
                      ifTruePoppinsElseLato: false)
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/wpp_icon.png"),
                  CustomTextComponent(
                      content: phone,
                      size: 12,
                      color: AppColors.white,
                      ifTruePoppinsElseLato: false)
                ],
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: BigButtonActionComponent(
                  label: "Compartilhar",
                  fontColor: AppColors.yellow,
                  backgroundColor: AppColors.black,
                  borderRadius: 2.8,
                  borderColor: AppColors.yellow,
                  onTap: () {},
                  fontSize: 14,
                  ifTruePoppinsElseLato: true),
            )
          ])),
    );
  }
}
