import 'package:flutter/material.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/pages/cadastro_page.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/dix_version_footer_component.dart';
import 'package:ln_app/app/components/input_component.dart';
import 'package:ln_app/app/pages/home_listagem_page.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:page_transition/page_transition.dart';

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
                    padding: const EdgeInsets.only(left: 4.0, bottom: 10),
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
                    label: "Email",
                    isPasswordInput: false,
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
                    label: "Senha",
                    isPasswordInput: true,
                    placeholder: "********",
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0, bottom: 18),
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
                  BigButtonActionComponent(
                      ifTruePoppinsElseLato: true,
                      fontSize: 20,
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeListagemPage(),
                          )),
                      label: "Entrar",
                      backgroundColor: AppColors.yellow,
                      borderRadius: 8,
                      borderColor: AppColors.yellow),
                  const SizedBox(
                    height: 26,
                  ),
                  BigButtonActionComponent(
                      ifTruePoppinsElseLato: true,
                      fontSize: 20,
                      onTap: () => Navigator.push(
                          context,
                          PageTransition(
                              duration: const Duration(milliseconds: 400),
                              type: PageTransitionType.rightToLeft,
                              child: const CadastroPage())),
                      label: "Criar conta",
                      backgroundColor: AppColors.transparent,
                      borderRadius: 8,
                      borderColor: AppColors.white),
                  const Spacer(
                    flex: 3,
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: DixVersionFooterComponent(
                        size: 8,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
