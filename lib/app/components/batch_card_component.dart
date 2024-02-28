import 'package:flutter/material.dart';
import 'package:ln_app/app/components/batch_card_info_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

class BatchCardComponent extends StatefulWidget {
  final String imagePath;
  const BatchCardComponent({super.key, required this.imagePath});

  @override
  State<BatchCardComponent> createState() => _BatchCardComponentState();
}

class _BatchCardComponentState extends State<BatchCardComponent> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width >= 481 ? 90.w : null,
      child: Padding(
        padding: EdgeInsets.all(screenSize.width >= 481 ? 16 : 8.0),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width >= 481 ? 10 : 4, vertical: 18),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6.34)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.34),
                            child: Image.asset(
                              widget.imagePath,
                              width: 350,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1.9),
                              child: Image.asset(
                                "assets/images/gados2.png",
                                width: screenSize.width >= 481 ? 11.w : 47,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width >= 481 ? 24 : 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(1.9),
                                child: Image.asset(
                                  "assets/images/gados3.png",
                                  width: screenSize.width >= 481 ? 11.w : 47,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1.9),
                              child: Image.asset(
                                "assets/images/gados4.png",
                                fit: BoxFit.fill,
                                width: screenSize.width >= 481 ? 11.w : 47,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BatchCardInfoComponent(
                            contentDescriptionSize: 9,
                            descriptionSize: 10,
                            titleSize: 14.sp,
                            localFontSize: 10,
                            title: "Lote 175",
                            city: "Belo Horizonte - MG",
                            description: "Descrição do lote: ",
                            contentDescription:
                                "\nNovilhas de 24 a 26 meses, 400 a 450kgs, Criadoro TZN"),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.black),
                                  color: AppColors.transparent,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/cow.png",
                                                  color: AppColors.black,
                                                  fit: BoxFit.cover,
                                                  height:
                                                      screenSize.width >= 481
                                                          ? 9.sp
                                                          : 12,
                                                ),
                                                CustomTextComponent(
                                                    content: "Quantidade: ",
                                                    size:
                                                        screenSize.width >= 481
                                                            ? 7.sp
                                                            : 8.57,
                                                    color: AppColors.black,
                                                    ifTruePoppinsElseLato:
                                                        false),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                  top: 2,
                                                  bottom: 4),
                                              child: CustomTextComponent(
                                                  content: "01",
                                                  size: screenSize.width >= 481
                                                      ? 7.sp
                                                      : 8.57,
                                                  color: AppColors.black,
                                                  ifTruePoppinsElseLato: false),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.filter_alt,
                                                  size: screenSize.width >= 481
                                                      ? 9.sp
                                                      : 12,
                                                  color: AppColors.black,
                                                ),
                                                CustomTextComponent(
                                                    content: "Raça/Cruza: ",
                                                    size:
                                                        screenSize.width >= 481
                                                            ? 7.sp
                                                            : 8.57,
                                                    color: AppColors.black,
                                                    ifTruePoppinsElseLato:
                                                        false),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                  top: 2,
                                                  bottom: 4),
                                              child: CustomTextComponent(
                                                  content: "Angus/Charolês",
                                                  size: screenSize.width >= 481
                                                      ? 7.sp
                                                      : 8.57,
                                                  color: AppColors.black,
                                                  ifTruePoppinsElseLato: false),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/bull.png",
                                                  height:
                                                      screenSize.width >= 481
                                                          ? 8.sp
                                                          : 12,
                                                  color: AppColors.black,
                                                ),
                                                CustomTextComponent(
                                                    content: "Sexo: ",
                                                    size:
                                                        screenSize.width >= 481
                                                            ? 7.sp
                                                            : 8.57,
                                                    color: AppColors.black,
                                                    ifTruePoppinsElseLato:
                                                        false),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                  top: 2,
                                                  bottom: 4),
                                              child: CustomTextComponent(
                                                  content: "Macho",
                                                  size: screenSize.width >= 481
                                                      ? 7.sp
                                                      : 8.57,
                                                  color: AppColors.black,
                                                  ifTruePoppinsElseLato: false),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6),
                                    child: Container(
                                      height:
                                          screenSize.width >= 481 ? 180 : 100,
                                      width: screenSize.width >= 481 ? 4 : 2,
                                      color: AppColors.inputFillColor,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month,
                                                  size: screenSize.width >= 481
                                                      ? 8.sp
                                                      : 12,
                                                  color: AppColors.black,
                                                ),
                                                CustomTextComponent(
                                                    content: "Idade: ",
                                                    size:
                                                        screenSize.width >= 481
                                                            ? 7.sp
                                                            : 8.57,
                                                    color: AppColors.black,
                                                    ifTruePoppinsElseLato:
                                                        false),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                  top: 2,
                                                  bottom: 4),
                                              child: CustomTextComponent(
                                                  content: "20 anos",
                                                  size: screenSize.width >= 481
                                                      ? 7.sp
                                                      : 8.57,
                                                  color: AppColors.black,
                                                  ifTruePoppinsElseLato: false),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.filter_alt,
                                                  size: screenSize.width >= 481
                                                      ? 9.sp
                                                      : 12,
                                                  color: AppColors.black,
                                                ),
                                                CustomTextComponent(
                                                    content: "Categoria: ",
                                                    size:
                                                        screenSize.width >= 481
                                                            ? 7.sp
                                                            : 8.57,
                                                    color: AppColors.black,
                                                    ifTruePoppinsElseLato:
                                                        false),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                  top: 2,
                                                  bottom: 4),
                                              child: CustomTextComponent(
                                                  content: "Novilhas",
                                                  size: screenSize.width >= 481
                                                      ? 7.sp
                                                      : 8.57,
                                                  color: AppColors.black,
                                                  ifTruePoppinsElseLato: false),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/kg.png",
                                                  height:
                                                      screenSize.width >= 481
                                                          ? 8.sp
                                                          : 12,
                                                  color: AppColors.black,
                                                ),
                                                CustomTextComponent(
                                                    content: "Peso médio: ",
                                                    size:
                                                        screenSize.width >= 481
                                                            ? 7.sp
                                                            : 8.57,
                                                    color: AppColors.black,
                                                    ifTruePoppinsElseLato:
                                                        false),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                  top: 2,
                                                  bottom: 4),
                                              child: CustomTextComponent(
                                                  content: "650kg",
                                                  size: screenSize.width >= 481
                                                      ? 7.sp
                                                      : 8.57,
                                                  color: AppColors.black,
                                                  ifTruePoppinsElseLato: false),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: BigButtonActionComponent(
                          label: "Compartilhar",
                          backgroundColor: AppColors.white,
                          borderRadius: 3.5,
                          borderColor: AppColors.yellow,
                          fontColor: AppColors.yellow,
                          onTap: () {},
                          fontSize: screenSize.width >= 481 ? 18 : 12,
                          ifTruePoppinsElseLato: true),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: BigButtonActionComponent(
                          label: "Tenho interesse",
                          backgroundColor: AppColors.confirm,
                          borderRadius: 3.5,
                          borderColor: AppColors.confirm,
                          fontColor: AppColors.white,
                          onTap: () {},
                          fontSize: screenSize.width >= 481 ? 18 : 12,
                          ifTruePoppinsElseLato: true),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
