import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ln_app/app/pages/login_page.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/dix_version_footer_component.dart';
import 'package:ln_app/app/utils/app_colors.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).whenComplete(() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage()
                .animate()
                .fadeIn(duration: const Duration(seconds: 2)),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.black,
            image: DecorationImage(
                opacity: 0.35,
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma(),
                filterQuality: FilterQuality.high)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Image.asset(
                "assets/images/logo.png",
                width: 250,
                height: 200,
              ),
            ),
            SizedBox(
                width: 260,
                child: CustomTextComponent(
                    ifTruePoppinsElseLato: true,
                    content:
                        "Leilões online para rematar seu gado com praticidade",
                    size: 16,
                    color: AppColors.white)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: CircularProgressIndicator(
                strokeWidth: 4.0,
                color: AppColors.white,
              ),
            ),
            const DixVersionFooterComponent()
          ],
        ),
      ),
    );
  }
}
