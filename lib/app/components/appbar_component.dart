import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class AppbarComponent extends StatelessWidget {
  final String title;
  const AppbarComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomTextComponent(
          content: title,
          size: 20,
          color: AppColors.white,
          ifTruePoppinsElseLato: true),
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColors.inputFillColor),
      toolbarHeight: 70,
      flexibleSpace: const FlexibleSpaceBar(
        background: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: AppColors.degradeAppbar,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.35]))),
      ),
    );
  }
}
