import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ln_app/app/components/appbar_component.dart';
import 'package:ln_app/app/components/batch_card_info_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/carrousel_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/drawer_component.dart';
import 'package:ln_app/app/pages/home_listagem_page.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

class LeilaoCardInfoPage extends StatefulWidget {
  const LeilaoCardInfoPage({super.key});

  @override
  State<LeilaoCardInfoPage> createState() => _LeilaoCardInfoPageState();
}

class _LeilaoCardInfoPageState extends State<LeilaoCardInfoPage> {
  int navCount = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: AppbarComponent(title: "Lote 175")),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CarousselComponent(),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: SizedBox(
                  width: screenSize.width >= 481 ? 500 : 290,
                  child: BatchCardInfoComponent(
                      localFontSize: 16,
                      internalPadding: 8,
                      contentDescriptionSize: 14,
                      descriptionSize: 16,
                      titleSize: 20,
                      titleColor: AppColors.white,
                      backgroundColor: AppColors.black,
                      cityColor: AppColors.white,
                      descriptionColor: AppColors.confirm,
                      descriptionIconColor: AppColors.lightBlack,
                      locationIconColor: AppColors.confirm,
                      title: "Lote 175",
                      city: " Belo Horizonte - MG",
                      description: " Descrição do lote: ",
                      contentDescription:
                          "\nNovilhas de 24 a 26 meses, 400 a 450kgs, Criadoro TZN"),
                ),
              ),
              SizedBox(
                  width: screenSize.width >= 481 ? 500 : 290,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.black),
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/cow.png",
                                            color: AppColors.lightBlack,
                                            height: screenSize.width >= 481
                                                ? 20
                                                : 14,
                                          ),
                                          CustomTextComponent(
                                              content: "Quantidade: ",
                                              size: screenSize.width >= 481
                                                  ? 8.sp
                                                  : 14,
                                              color: AppColors.confirm,
                                              ifTruePoppinsElseLato: false),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 2, bottom: 4),
                                        child: CustomTextComponent(
                                            content: "01",
                                            size: screenSize.width >= 481
                                                ? 8.sp
                                                : 14,
                                            color: AppColors.white,
                                            ifTruePoppinsElseLato: false),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.filter_alt,
                                            size: screenSize.width >= 481
                                                ? 6.sp
                                                : 14,
                                            color: AppColors.lightBlack,
                                          ),
                                          CustomTextComponent(
                                              content: "Raça/Cruza: ",
                                              size: screenSize.width >= 481
                                                  ? 8.sp
                                                  : 14,
                                              color: AppColors.confirm,
                                              ifTruePoppinsElseLato: false),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 2, bottom: 4),
                                        child: CustomTextComponent(
                                            content: "Angus/Charolês",
                                            size: screenSize.width >= 481
                                                ? 8.sp
                                                : 14,
                                            color: AppColors.white,
                                            ifTruePoppinsElseLato: false),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/bull.png",
                                            height: screenSize.width >= 481
                                                ? 8.sp
                                                : 14,
                                            color: AppColors.lightBlack,
                                          ),
                                          CustomTextComponent(
                                              content: "Sexo: ",
                                              size: screenSize.width >= 481
                                                  ? 8.sp
                                                  : 14,
                                              color: AppColors.confirm,
                                              ifTruePoppinsElseLato: false),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 2, bottom: 4),
                                        child: CustomTextComponent(
                                            content: "Macho",
                                            size: screenSize.width >= 481
                                                ? 8.sp
                                                : 14,
                                            color: AppColors.white,
                                            ifTruePoppinsElseLato: false),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.calendar_month,
                                            size: 14,
                                            color: AppColors.lightBlack,
                                          ),
                                          CustomTextComponent(
                                              content: "Idade: ",
                                              size: screenSize.width >= 481
                                                  ? 8.sp
                                                  : 14,
                                              color: AppColors.confirm,
                                              ifTruePoppinsElseLato: false),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 2, bottom: 4),
                                        child: CustomTextComponent(
                                            content: "20 anos",
                                            size: screenSize.width >= 481
                                                ? 8.sp
                                                : 14,
                                            color: AppColors.white,
                                            ifTruePoppinsElseLato: false),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.filter_alt,
                                            size: 14,
                                            color: AppColors.lightBlack,
                                          ),
                                          CustomTextComponent(
                                              content: "Categoria: ",
                                              size: screenSize.width >= 481
                                                  ? 8.sp
                                                  : 14,
                                              color: AppColors.confirm,
                                              ifTruePoppinsElseLato: false),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 2, bottom: 4),
                                        child: CustomTextComponent(
                                            content: "Novilhas",
                                            size: screenSize.width >= 481
                                                ? 8.sp
                                                : 14,
                                            color: AppColors.white,
                                            ifTruePoppinsElseLato: false),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/kg.png",
                                            height: 14,
                                            color: AppColors.lightBlack,
                                          ),
                                          CustomTextComponent(
                                              content: "Peso médio: ",
                                              size: screenSize.width >= 481
                                                  ? 8.sp
                                                  : 14,
                                              color: AppColors.confirm,
                                              ifTruePoppinsElseLato: false),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, top: 2, bottom: 4),
                                        child: CustomTextComponent(
                                            content: "650kg",
                                            size: screenSize.width >= 481
                                                ? 8.sp
                                                : 14,
                                            color: AppColors.white,
                                            ifTruePoppinsElseLato: false),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  )),
              SizedBox(
                width: screenSize.width >= 481 ? 500 : 290,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: BigButtonActionComponent(
                            label: "Compartilhar",
                            backgroundColor: AppColors.transparent,
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
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: screenSize.width >= 481 ? 20 : 14,
          unselectedFontSize: screenSize.width >= 481 ? 20 : 14,
          selectedItemColor: AppColors.yellow,
          unselectedItemColor: AppColors.white,
          currentIndex: navCount,
          onTap: (value) {
            setState(() {
              navCount = value;
              if (navCount == 0) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const HomeListagemPage().animate().fadeIn(),
                    ));
              }
            });
          },
          backgroundColor: AppColors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/gavel.png",
                color: navCount == 0 ? AppColors.yellow : AppColors.white,
                height: screenSize.width >= 481 ? 40 : 20,
              ),
              label: "Leilões",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/clock.png",
                color: navCount == 1 ? AppColors.yellow : AppColors.white,
                height: screenSize.width >= 481 ? 40 : 20,
              ),
              label: "Venda direta",
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/profit.png",
                  color: navCount == 2 ? AppColors.yellow : AppColors.white,
                  height: screenSize.width >= 481 ? 40 : 20,
                ),
                label: "Resultados")
          ]),
      drawer: const DrawerComponent(),
    );
  }
}
