import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/pages/cadastro_page.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/dix_version_footer_component.dart';
import 'package:ln_app/app/pages/home_listagem_page.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void navega(Widget pagina) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              pagina.animate().fadeIn(duration: const Duration(seconds: 2)),
        ));
  }

  bool validaEmail() {
    return _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width >= 481 ? 14.w : 40.0),
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
                  Center(
                      child: screenSize.width >= 481
                          ? Image.asset(
                              "assets/images/logo_maior.png",
                              height: 250,
                            )
                          : Image.asset("assets/images/logo_menor.png")),
                  const Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0, left: 4.0),
                    child: CustomTextComponent(
                        content: "Entrar",
                        size: screenSize.width >= 481 ? 40 : 20,
                        color: AppColors.white,
                        weight: FontWeight.w900,
                        ifTruePoppinsElseLato: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, bottom: 10),
                    child: CustomTextComponent(
                        ifTruePoppinsElseLato: true,
                        content: "Informe os dados para acessar",
                        size: screenSize.width >= 481 ? 30 : 15,
                        color: AppColors.white),
                  ),
                  const Spacer(),
                  Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, bottom: 4.0),
                            child: CustomTextComponent(
                                ifTruePoppinsElseLato: false,
                                content: "Email",
                                weight: FontWeight.w400,
                                size: screenSize.width >= 481 ? 32 : 16,
                                color: AppColors.white),
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null) {
                                return "O email não pode ser vazio";
                              }
                              if (value.length < 5) {
                                return "Email inválido";
                              }
                              if (!value.contains("@")) {
                                return "email inválido";
                              }
                              return null;
                            },
                            style: TextStyle(
                                fontSize: screenSize.width >= 481 ? 26 : 14,
                                height: screenSize.width >= 481 ? 1 : 0.1),
                            controller: emailController,
                            decoration: InputDecoration(
                                errorStyle: TextStyle(
                                    fontSize:
                                        screenSize.width >= 481 ? 20 : 14),
                                iconColor: AppColors.black,
                                hintStyle:
                                    const TextStyle(color: Colors.black38),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                focusColor: Colors.yellow,
                                filled: true,
                                fillColor: AppColors.inputFillColor,
                                hintText: "email@example.com"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 4.0, bottom: 4.0, top: 10),
                            child: CustomTextComponent(
                                ifTruePoppinsElseLato: false,
                                content: "Senha",
                                weight: FontWeight.w400,
                                size: screenSize.width >= 481 ? 32 : 16,
                                color: AppColors.white),
                          ),
                          TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.length < 5) {
                                return "A senha é muito pequena";
                              }
                              return null;
                            },
                            style: TextStyle(
                                fontSize: screenSize.width >= 481 ? 26 : 14,
                                height: screenSize.width >= 481 ? 1 : 0.1),
                            controller: passwordController,
                            decoration: InputDecoration(
                                errorStyle: TextStyle(
                                    fontSize:
                                        screenSize.width >= 481 ? 20 : 14),
                                iconColor: AppColors.black,
                                hintStyle:
                                    const TextStyle(color: Colors.black38),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                focusColor: Colors.yellow,
                                filled: true,
                                fillColor: AppColors.inputFillColor,
                                hintText: "*******"),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 4.0,
                                  bottom: screenSize.width >= 481 ? 50 : 30),
                              child: GestureDetector(
                                onTap: () {},
                                child: CustomTextComponent(
                                    content: "Esqueceu sua senha ?",
                                    size: screenSize.width >= 481 ? 20 : 13,
                                    color: AppColors.links,
                                    ifTruePoppinsElseLato: true),
                              ),
                            ),
                          ),
                          BigButtonActionComponent(
                              ifTruePoppinsElseLato: true,
                              fontSize: screenSize.width >= 481 ? 28 : 20,
                              onTap: () async {
                                if (validaEmail()) {
                                  await Future.delayed(
                                      const Duration(seconds: 1));
                                  navega(const HomeListagemPage());
                                }
                              },
                              label: "Entrar",
                              backgroundColor: AppColors.yellow,
                              borderRadius: 8,
                              borderColor: AppColors.yellow),
                          const SizedBox(
                            height: 26,
                          ),
                          BigButtonActionComponent(
                              ifTruePoppinsElseLato: true,
                              fontSize: screenSize.width >= 481 ? 28 : 20,
                              onTap: () => Navigator.push(
                                  context,
                                  PageTransition(
                                      duration:
                                          const Duration(milliseconds: 400),
                                      type: PageTransitionType.rightToLeft,
                                      child: const CadastroPage())),
                              label: "Criar conta",
                              backgroundColor: AppColors.transparent,
                              borderRadius: 8,
                              borderColor: AppColors.white),
                        ],
                      )),
                  const Spacer(
                    flex: 2,
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
