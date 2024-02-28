import 'package:flutter/material.dart';
import 'package:ln_app/app/components/appbar_component.dart';
import 'package:ln_app/app/components/batch_banner_component.dart';
import 'package:ln_app/app/components/batch_image_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/drawer_component.dart';
import 'package:ln_app/app/components/live_card_component.dart';
import 'package:ln_app/app/pages/leilao_card_info_page.dart';
import 'package:ln_app/app/pages/leilao_detalhe_page.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:sizer/sizer.dart';

class HomeListagemPage extends StatefulWidget {
  const HomeListagemPage({super.key});

  @override
  State<HomeListagemPage> createState() => _HomeListagemPageState();
}

class _HomeListagemPageState extends State<HomeListagemPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: AppbarComponent(title: "Venda direta")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const LiveCardComponent(),
            CustomTextComponent(
                content: "Próximos Leilões",
                size: screenSize.width >= 481 ? 10.sp : 16,
                color: AppColors.white,
                weight: FontWeight.w500,
                ifTruePoppinsElseLato: true),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 5),
              child: Container(
                width: 40,
                height: 2,
                color: AppColors.yellow,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const DetalheLeilaoPage(batchName: "Lote 175"),
                    ));
              },
              child: const BatchBannerComponent(
                  imagePath: "assets/images/banner-1.png",
                  centeredTitle: "10 FEV.2023 às 19:00",
                  bottomTitle: "LEILÃO VIRTUAL GADO DE CORTE - LOTE 175"),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LeilaoCardInfoPage(),
                  )),
              child: const BatchImage(
                  amount: 68,
                  batchName: "LOTE 303",
                  imagePath: "assets/images/gados.png"),
            ),
            const BatchImage(
                amount: 68,
                batchName: "LOTE 175",
                imagePath: "assets/images/gados2.png"),
            const BatchImage(
                amount: 68,
                batchName: "LOTE 176",
                imagePath: "assets/images/gados3.png"),
            const BatchImage(
                amount: 68,
                batchName: "LOTE 253",
                imagePath: "assets/images/gados4.png"),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: screenSize.width >= 481 ? 240 : 197,
              height: screenSize.width >= 481 ? 50 : 39,
              child: BigButtonActionComponent(
                  ifTruePoppinsElseLato: false,
                  label: "Ver mais lotes",
                  backgroundColor: AppColors.yellow,
                  borderRadius: 5.34,
                  borderColor: AppColors.yellow,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const DetalheLeilaoPage(batchName: "Lote 175"),
                        ));
                  },
                  fontSize: screenSize.width >= 481 ? 7.sp : 13.36),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: 106,
                height: 3,
                color: AppColors.confirm,
              ),
            ),
            const BatchBannerComponent(
                imagePath: "assets/images/banner-2.png",
                centeredTitle: "10 FEV.2023 às 19:00",
                bottomTitle: "LEILÃO VIRTUAL GADO DE CORTE - LOTE 175"),
            const BatchImage(
                amount: 68,
                batchName: "LOTE 303",
                imagePath: "assets/images/gados.png"),
            const BatchImage(
                amount: 68,
                batchName: "LOTE 175",
                imagePath: "assets/images/gados2.png"),
            const BatchImage(
                amount: 68,
                batchName: "LOTE 176",
                imagePath: "assets/images/gados3.png"),
            const BatchImage(
                amount: 68,
                batchName: "LOTE 253",
                imagePath: "assets/images/gados4.png"),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: screenSize.width >= 481 ? 240 : 197,
              height: screenSize.width >= 481 ? 50 : 39,
              child: BigButtonActionComponent(
                  ifTruePoppinsElseLato: false,
                  label: "Ver mais lotes",
                  backgroundColor: AppColors.yellow,
                  borderRadius: 5.34,
                  borderColor: AppColors.yellow,
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const DetalheLeilaoPage(batchName: "Lote 175"),
                        ));
                  },
                  fontSize: screenSize.width >= 481 ? 7.sp : 13.36),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      drawer: const DrawerComponent(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Color.fromARGB(13, 255, 255, 255))],
            gradient: LinearGradient(
                colors: AppColors.degradeAppbar,
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                stops: [0.2, 1])),
        child: BottomNavigationBar(
            selectedFontSize: screenSize.width >= 481 ? 20 : 14,
            unselectedFontSize: screenSize.width >= 481 ? 20 : 14,
            selectedItemColor: AppColors.yellow,
            unselectedItemColor: AppColors.white,
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            backgroundColor: AppColors.transparent,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/gavel.png",
                  color: _index == 0 ? AppColors.yellow : AppColors.white,
                  height: screenSize.width >= 481 ? 40 : 20,
                ),
                label: "Leilões",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/clock.png",
                  color: _index == 1 ? AppColors.yellow : AppColors.white,
                  height: screenSize.width >= 481 ? 40 : 20,
                ),
                label: "Venda direta",
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/profit.png",
                    color: _index == 2 ? AppColors.yellow : AppColors.white,
                    height: screenSize.width >= 481 ? 40 : 20,
                  ),
                  label: "Resultados")
            ]),
      ),
    );
  }
}
