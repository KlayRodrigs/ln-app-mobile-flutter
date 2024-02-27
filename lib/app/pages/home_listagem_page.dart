import 'package:flutter/material.dart';
import 'package:ln_app/app/components/appbar_component.dart';
import 'package:ln_app/app/components/batch_banner_component.dart';
import 'package:ln_app/app/components/batch_image_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/dix_version_footer_component.dart';
import 'package:ln_app/app/components/live_card_component.dart';
import 'package:ln_app/app/pages/leilao_detalhe_page.dart';
import 'package:ln_app/app/pages/login_page.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class HomeListagemPage extends StatefulWidget {
  const HomeListagemPage({super.key});

  @override
  State<HomeListagemPage> createState() => _HomeListagemPageState();
}

class _HomeListagemPageState extends State<HomeListagemPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
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
                size: 16,
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
            SizedBox(
              width: 197,
              height: 39,
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
                  fontSize: 13.36),
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
              width: 197,
              height: 39,
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
                  fontSize: 13.36),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: AppColors.degradeAppbar,
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: [0.3, 1])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.white,
                    size: 26,
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 70.0,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/gados.png",
                          height: 70,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 40),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: AppColors.white,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomTextComponent(
                      content: "Rei do gado",
                      size: 18,
                      color: AppColors.white,
                      ifTruePoppinsElseLato: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 6),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomTextComponent(
                      content: "reidogado@gmail.com",
                      size: 14,
                      color: AppColors.white,
                      ifTruePoppinsElseLato: true),
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    child: CustomTextComponent(
                        content: "Sair",
                        size: 22,
                        color: AppColors.white,
                        ifTruePoppinsElseLato: true)),
              ),
              const Align(
                alignment: Alignment.center,
                child: DixVersionFooterComponent(
                  size: 14,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Color.fromARGB(13, 255, 255, 255))],
            gradient: LinearGradient(
                colors: AppColors.degradeAppbar,
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                stops: [0.2, 1])),
        child: BottomNavigationBar(
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
                  height: 20,
                ),
                label: "Leilões",
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/clock.png",
                    color: _index == 1 ? AppColors.yellow : AppColors.white,
                    height: 20,
                  ),
                  label: "Venda direta"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/profit.png",
                    color: _index == 2 ? AppColors.yellow : AppColors.white,
                    height: 20,
                  ),
                  label: "Resultados")
            ]),
      ),
    );
  }
}
