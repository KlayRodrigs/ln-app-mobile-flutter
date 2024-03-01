import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

class AlertExceptionWidget {
  AlertDialog alertExceptionWidget(
      {required BuildContext context, required String title}) {
    return AlertDialog(
      elevation: 4,
      shadowColor: AppColors.placeholderColor,
      icon: Icon(
        Icons.error,
        color: AppColors.white,
        size: 20.sp,
      ),
      backgroundColor: AppColors.yellow,
      title: CustomTextComponent(
          content: title,
          size: 11.5.sp,
          color: AppColors.white,
          ifTruePoppinsElseLato: true),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: CustomTextComponent(
              content: "Ok",
              size: 10.sp,
              color: AppColors.white,
              ifTruePoppinsElseLato: true),
        )
      ],
    );
  }

  Future<void> showAlertExceptionWidget(
      {required BuildContext context, required String title}) async {
    await showDialog(
      context: context,
      builder: (context) {
        return alertExceptionWidget(context: context, title: title);
      },
    );
  }
}
