import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/dix_version_footer_component.dart';
import 'package:ln_app/app/pages/login_page.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({super.key});

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
