import 'package:flutter/material.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class BatchCardComponent extends StatefulWidget {
  final String imagePath;
  const BatchCardComponent({super.key, required this.imagePath});

  @override
  State<BatchCardComponent> createState() => _BatchCardComponentState();
}

class _BatchCardComponentState extends State<BatchCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, bottom: 20, left: 12, right: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 18),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(6.34)),
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
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(1.9),
                            child: Image.asset(
                              "assets/images/gados2.png",
                              width: 47,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1.9),
                              child: Image.asset(
                                "assets/images/gados3.png",
                                width: 47,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(1.9),
                            child: Image.asset(
                              "assets/images/gados4.png",
                              width: 47,
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 9.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: CustomTextComponent(
                            content: "Lote 175",
                            size: 14,
                            color: AppColors.black,
                            ifTruePoppinsElseLato: true,
                            weight: FontWeight.w900,
                          ),
                        ),
                        Container(
                            width: 190,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.black),
                                color: AppColors.transparent,
                                borderRadius: BorderRadius.circular(7)),
                            child: const Text.rich(TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.location_on_outlined,
                                size: 12,
                              )),
                              TextSpan(
                                  text: "Belo Horizonte - MG ",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 8.75,
                                      color: AppColors.black))
                            ]))),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Container(
                              width: 190,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.black),
                                  color: AppColors.transparent,
                                  borderRadius: BorderRadius.circular(7)),
                              child: const Text.rich(TextSpan(children: [
                                WidgetSpan(
                                    child: Icon(
                                  Icons.description_outlined,
                                  size: 12,
                                )),
                                TextSpan(
                                    text: "Descrição do lote: ",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 8.57)),
                                TextSpan(
                                    text:
                                        "\nNovilhas de 24 a 26 meses, 400 a 450kgs, Criadoro TZN",
                                    style: TextStyle(fontSize: 8.57)),
                              ]))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Container(
                              width: 190,
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
                                                  height: 10,
                                                ),
                                                CustomTextComponent(
                                                    content: "Quantidade: ",
                                                    size: 8.75,
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
                                                  size: 8.75,
                                                  color: AppColors.background,
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
                                                const Icon(
                                                  Icons.filter_alt,
                                                  size: 10,
                                                ),
                                                CustomTextComponent(
                                                    content: "Raça/Cruza: ",
                                                    size: 8.75,
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
                                                  size: 8.75,
                                                  color: AppColors.background,
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
                                                const Icon(
                                                  Icons.abc,
                                                  size: 14,
                                                ),
                                                CustomTextComponent(
                                                    content: "Sexo: ",
                                                    size: 8.75,
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
                                                  size: 8.75,
                                                  color: AppColors.background,
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
                                      height: 100,
                                      width: 2,
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
                                                const Icon(
                                                  Icons.calendar_month,
                                                  size: 12,
                                                ),
                                                CustomTextComponent(
                                                    content: "Idade: ",
                                                    size: 8.75,
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
                                                  size: 8.75,
                                                  color: AppColors.background,
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
                                                const Icon(
                                                  Icons.filter_alt,
                                                  size: 12,
                                                ),
                                                CustomTextComponent(
                                                    content: "Categoria: ",
                                                    size: 8.75,
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
                                                  size: 8.75,
                                                  color: AppColors.background,
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
                                                  height: 10,
                                                ),
                                                CustomTextComponent(
                                                    content: "Peso médio: ",
                                                    size: 8.75,
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
                                                  size: 8.75,
                                                  color: AppColors.background,
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
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
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
                        fontSize: 12,
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
                        fontSize: 12,
                        ifTruePoppinsElseLato: true),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
