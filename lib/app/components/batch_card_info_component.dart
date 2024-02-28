import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class BatchCardInfoComponent extends StatelessWidget {
  final double titleSize,
      descriptionSize,
      contentDescriptionSize,
      internalPadding,
      localFontSize;
  final String title, city, description, contentDescription;
  Color titleColor,
      cityColor,
      descriptionIconColor,
      locationIconColor,
      descriptionColor,
      backgroundColor;
  BatchCardInfoComponent(
      {super.key,
      required this.title,
      required this.city,
      required this.description,
      required this.contentDescription,
      this.internalPadding = 4,
      this.titleColor = AppColors.black,
      this.cityColor = AppColors.black,
      this.descriptionIconColor = AppColors.black,
      this.locationIconColor = AppColors.black,
      this.descriptionColor = AppColors.black,
      this.backgroundColor = AppColors.transparent,
      required this.titleSize,
      required this.descriptionSize,
      required this.contentDescriptionSize,
      required this.localFontSize});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: CustomTextComponent(
            content: title,
            size: screenSize.width >= 481 ? 10.sp : titleSize,
            color: titleColor,
            ifTruePoppinsElseLato: true,
            weight: FontWeight.w900,
          ),
        ),
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(internalPadding),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.black),
                color: backgroundColor,
                borderRadius: BorderRadius.circular(7)),
            child: Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                Icons.location_on_outlined,
                size: screenSize.width >= 481 ? 8.sp : localFontSize + 2,
                color: locationIconColor,
              )),
              TextSpan(
                  text: city,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenSize.width >= 481 ? 8.sp : localFontSize,
                      color: cityColor))
            ]))),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(internalPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black),
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(7)),
              child: Text.rich(TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  Icons.description_outlined,
                  size: screenSize.width >= 481 ? 8.sp : descriptionSize + 2,
                  color: descriptionIconColor,
                )),
                TextSpan(
                    text: description,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize:
                            screenSize.width >= 481 ? 8.sp : descriptionSize,
                        color: descriptionColor)),
                TextSpan(
                    text: contentDescription,
                    style: TextStyle(
                        fontSize: screenSize.width >= 481
                            ? 6.5.sp
                            : contentDescriptionSize,
                        color: cityColor)),
              ]))),
        )
      ],
    );
  }
}
