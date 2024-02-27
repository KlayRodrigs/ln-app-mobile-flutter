import 'package:flutter/material.dart';
import 'package:ln_app/app/components/appbar_component.dart';
import 'package:ln_app/app/components/batch_banner_component.dart';
import 'package:ln_app/app/components/batch_card_component.dart';
import 'package:ln_app/app/components/card_contact_component.dart';
import 'package:ln_app/app/components/card_description_component.dart';
import 'package:ln_app/app/components/card_local_info_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class DetalheLeilaoPage extends StatefulWidget {
  final String batchName;
  const DetalheLeilaoPage({super.key, required this.batchName});

  @override
  State<DetalheLeilaoPage> createState() => _DetalheLeilaoPageState();
}

class _DetalheLeilaoPageState extends State<DetalheLeilaoPage> {
  int _index = 1;

  void increment() {
    _index = _index + 1;
  }

  void decrement() {
    _index = _index - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: AppbarComponent(title: widget.batchName)),
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const BatchBannerComponent(
                  imagePath: "assets/images/banner-1.png",
                  centeredTitle: "10 FEV.2023 às 19:00",
                  bottomTitle: "LEILÃO VIRTUAL GADO DE CORTE - LOTE 175"),
              const CardDescriptionComponent(
                description:
                    "Novilhas de 24 a 26 meses, 400 a 450kgs, Criadoro TZN",
              ),
              const CardContactComponent(
                phone: "(67) 99986-0275",
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 280.8,
                decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(7.2)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardLocalInfoComponent(
                      content: " 05/07/2023 17:00",
                      label: "Data de início:",
                      colorLabel: AppColors.confirm,
                      colorContent: AppColors.white,
                      ifTruePoppinsElseLato: false,
                      size: 14,
                    ),
                    CardLocalInfoComponent(
                      content: " ESTUDIO LN LEILÕES RURAIS",
                      label: "Local:",
                      colorLabel: AppColors.confirm,
                      colorContent: AppColors.white,
                      ifTruePoppinsElseLato: false,
                      size: 14,
                    ),
                    CardLocalInfoComponent(
                      content: " Aureo Rodrigues (Tico)/LN LEILÕES",
                      label: "Leiloeiro/Assessoria:",
                      colorLabel: AppColors.confirm,
                      colorContent: AppColors.white,
                      ifTruePoppinsElseLato: false,
                      size: 14,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextComponent(
                  content: "Lotes",
                  size: 18,
                  color: AppColors.white,
                  ifTruePoppinsElseLato: true),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 2,
                width: 40,
                color: AppColors.yellow,
              ),
              const SizedBox(
                height: 10,
              ),
              const BatchCardComponent(imagePath: "assets/images/gados.png"),
              const BatchCardComponent(imagePath: "assets/images/gados2.png"),
              const BatchCardComponent(imagePath: "assets/images/gados3.png"),
              const BatchCardComponent(imagePath: "assets/images/gados4.png"),
              const BatchCardComponent(imagePath: "assets/images/gados5.png"),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (_index > 1 && _index < 6) {
                              decrement();
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: AppColors.inputFillColor,
                        )),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 1;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: _index == 1
                                ? AppColors.transparent
                                : AppColors.confirm,
                            border: Border.all(
                                color: _index == 1
                                    ? AppColors.confirm
                                    : AppColors.transparent),
                            borderRadius: BorderRadius.circular(4.44)),
                        child: Center(
                          child: CustomTextComponent(
                              content: "1",
                              size: 18,
                              color: AppColors.white,
                              ifTruePoppinsElseLato: true),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 2;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: _index == 2
                                ? AppColors.transparent
                                : AppColors.confirm,
                            border: Border.all(
                                color: _index == 2
                                    ? AppColors.confirm
                                    : AppColors.transparent),
                            borderRadius: BorderRadius.circular(4.44)),
                        child: Center(
                          child: CustomTextComponent(
                              content: "2",
                              size: 18,
                              color: AppColors.white,
                              ifTruePoppinsElseLato: true),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 3;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: _index == 3
                                ? AppColors.transparent
                                : AppColors.confirm,
                            border: Border.all(
                                color: _index == 3
                                    ? AppColors.confirm
                                    : AppColors.transparent),
                            borderRadius: BorderRadius.circular(4.44)),
                        child: Center(
                          child: CustomTextComponent(
                              content: "3",
                              size: 18,
                              color: AppColors.white,
                              ifTruePoppinsElseLato: true),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 4;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: _index == 4
                                ? AppColors.transparent
                                : AppColors.confirm,
                            border: Border.all(
                                color: _index == 4
                                    ? AppColors.confirm
                                    : AppColors.transparent),
                            borderRadius: BorderRadius.circular(4.44)),
                        child: Center(
                          child: CustomTextComponent(
                              content: "4",
                              size: 18,
                              color: AppColors.white,
                              ifTruePoppinsElseLato: true),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 5;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: _index == 5
                                ? AppColors.transparent
                                : AppColors.confirm,
                            border: Border.all(
                                color: _index == 5
                                    ? AppColors.confirm
                                    : AppColors.transparent),
                            borderRadius: BorderRadius.circular(4.44)),
                        child: Center(
                          child: CustomTextComponent(
                              content: "5",
                              size: 18,
                              color: AppColors.white,
                              ifTruePoppinsElseLato: true),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (_index > 0 && _index < 5) {
                              increment();
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColors.inputFillColor,
                        ))
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
