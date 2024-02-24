import 'package:flutter/material.dart';
import 'package:ln_app/components/custom_text_component.dart';
import 'package:ln_app/components/dix_version_footer_component.dart';
import 'package:ln_app/components/input_component.dart';
import 'package:ln_app/utils/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: AppColors.degrade,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.5, 1])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  Center(child: Image.asset("assets/images/logo_menor.png")),
                  const Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0, left: 4.0),
                    child: CustomTextComponent(
                        content: "Entrar",
                        size: 20,
                        color: AppColors.white,
                        weight: FontWeight.w900,
                        ifTruePoppinsElseLato: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: CustomTextComponent(
                        ifTruePoppinsElseLato: true,
                        content: "Informe os dados para acessar",
                        size: 15,
                        color: AppColors.white),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                    child: CustomTextComponent(
                        ifTruePoppinsElseLato: false,
                        content: "Email",
                        weight: FontWeight.w400,
                        size: 16,
                        color: AppColors.white),
                  ),
                  const InputComponent(
                    password: false,
                    placeholder: "email@example.com",
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 4.0, bottom: 4.0, top: 10),
                    child: CustomTextComponent(
                        ifTruePoppinsElseLato: false,
                        content: "Senha",
                        weight: FontWeight.w400,
                        size: 16,
                        color: AppColors.white),
                  ),
                  const InputComponent(
                    password: true,
                    placeholder: "********",
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CustomTextComponent(
                            content: "Esqueceu sua senha ?",
                            size: 13,
                            color: AppColors.links,
                            ifTruePoppinsElseLato: true),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: const MaterialStatePropertyAll(
                                    Size(double.infinity, 50)),
                                elevation: const MaterialStatePropertyAll(7),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                padding: const MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(vertical: 15)),
                                backgroundColor: const MaterialStatePropertyAll(
                                    AppColors.yellow)),
                            onPressed: () {},
                            child: CustomTextComponent(
                                content: "Entrar",
                                size: 20,
                                color: AppColors.white,
                                ifTruePoppinsElseLato: true)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                fixedSize: const MaterialStatePropertyAll(
                                    Size(double.infinity, 50)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: AppColors.white,
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(0, 255, 255, 255))),
                            onPressed: () {},
                            child: CustomTextComponent(
                                content: "Criar conta",
                                size: 20,
                                color: AppColors.white,
                                ifTruePoppinsElseLato: true)),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: DixVersionFooterComponent()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
