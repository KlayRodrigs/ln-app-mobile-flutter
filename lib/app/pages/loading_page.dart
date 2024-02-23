import 'package:flutter/material.dart';
import 'package:ln_app/app/pages/login_page.dart';
import 'package:ln_app/components/poppins_text_component.dart';
import 'package:ln_app/utils/app_colors.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: AppColors.black,
            image: DecorationImage(
                opacity: 0.36,
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
                width: 400,
              ),
            ),
            const SizedBox(
                width: 260,
                child: PoppinsTextComponent(
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
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Image.asset("assets/images/logo_dix.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text(
                "V 2.0.0.1",
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
