import 'package:flutter/material.dart';
import 'package:ln_app/app/components/batch_banner_component.dart';
import 'package:ln_app/app/components/batch_image_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/live_card_component.dart';
import 'package:ln_app/app/pages/leilao_detalhe_page.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class LeiloesPage extends StatefulWidget {
  const LeiloesPage({super.key});

  @override
  State<LeiloesPage> createState() => _LeiloesPageState();
}

class _LeiloesPageState extends State<LeiloesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            Navigator.pushReplacement(
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
              onTap: () {},
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
              onTap: () {},
              fontSize: 13.36),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
