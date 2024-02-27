import 'package:flutter/material.dart';
import 'package:ln_app/app/components/appbar_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:ln_app/app/utils/messages_utils.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool _value = false;
  bool showPassword = false;
  bool showPasswordConfirmation = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool valida() {
    return _formKey.currentState!.validate() && _value;
  }

  void delay({required Duration time}) async {
    await Future.delayed(time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: AppbarComponent(title: "Criar Conta")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0, bottom: 4.0, top: 30),
                        child: CustomTextComponent(
                            ifTruePoppinsElseLato: false,
                            content: "Nome completo",
                            weight: FontWeight.w400,
                            size: 16,
                            color: AppColors.white),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return "O nome não pode ser vazio";
                          }
                          if (value.length < 5) {
                            return "Nome inválido";
                          }
                          return null;
                        },
                        style: const TextStyle(fontSize: 14, height: 0.1),
                        controller: nameController,
                        decoration: InputDecoration(
                            iconColor: AppColors.black,
                            hintStyle: const TextStyle(color: Colors.black38),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7)),
                            focusColor: Colors.yellow,
                            filled: true,
                            fillColor: AppColors.inputFillColor,
                            hintText: "nome completo"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0, bottom: 4.0, top: 20.0),
                        child: CustomTextComponent(
                            ifTruePoppinsElseLato: false,
                            content: "Email",
                            weight: FontWeight.w400,
                            size: 16,
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
                        style: const TextStyle(fontSize: 14, height: 0.1),
                        controller: emailController,
                        decoration: InputDecoration(
                            iconColor: AppColors.black,
                            hintStyle: const TextStyle(color: Colors.black38),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7)),
                            focusColor: Colors.yellow,
                            filled: true,
                            fillColor: AppColors.inputFillColor,
                            hintText: "email@example.com"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0, bottom: 4.0, top: 20.0),
                        child: CustomTextComponent(
                            ifTruePoppinsElseLato: false,
                            content: "Celular",
                            weight: FontWeight.w400,
                            size: 16,
                            color: AppColors.white),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return "O celular não pode estar em branco";
                          }
                          if (value.length != 14) {
                            return "Celular inválido";
                          }
                          return null;
                        },
                        style: const TextStyle(fontSize: 14, height: 0.1),
                        controller: phoneController,
                        decoration: InputDecoration(
                            iconColor: AppColors.black,
                            hintStyle: const TextStyle(color: Colors.black38),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7)),
                            focusColor: Colors.yellow,
                            filled: true,
                            fillColor: AppColors.inputFillColor,
                            hintText: "(00)00000-0000"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0, bottom: 4.0, top: 20.0),
                        child: CustomTextComponent(
                            ifTruePoppinsElseLato: false,
                            content: "Senha",
                            weight: FontWeight.w400,
                            size: 16,
                            color: AppColors.white),
                      ),
                      Stack(
                        children: [
                          TextFormField(
                            obscureText: showPassword,
                            validator: (value) {
                              if (value == null) {
                                return "A senha não pode estar em branco";
                              }
                              if (value.length < 5) {
                                return "Senha muito fraca, escolha uma mais forte";
                              }
                              if (passwordConfirmController.text !=
                                  passwordController.text) {
                                return "As senhas estão diferentes";
                              }
                              return null;
                            },
                            style: const TextStyle(fontSize: 14, height: 0.1),
                            controller: passwordController,
                            decoration: InputDecoration(
                                iconColor: AppColors.black,
                                hintStyle:
                                    const TextStyle(color: Colors.black38),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                focusColor: Colors.yellow,
                                filled: true,
                                fillColor: AppColors.inputFillColor,
                                hintText: "******"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, right: 14),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                child: Icon(
                                  showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.lightBlack,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0, bottom: 4.0, top: 20.0),
                        child: CustomTextComponent(
                            ifTruePoppinsElseLato: false,
                            content: "Confirmar senha",
                            weight: FontWeight.w400,
                            size: 16,
                            color: AppColors.white),
                      ),
                      Stack(
                        children: [
                          TextFormField(
                            obscureText: showPasswordConfirmation,
                            validator: (value) {
                              if (value == null) {
                                return "A senha não pode estar em branco";
                              }
                              if (value.length < 5) {
                                return "Senha muito fraca, escolha uma mais forte";
                              }
                              if (passwordConfirmController.text !=
                                  passwordController.text) {
                                return "As senhas estão diferentes";
                              }
                              return null;
                            },
                            style: const TextStyle(fontSize: 14, height: 0.1),
                            controller: passwordConfirmController,
                            decoration: InputDecoration(
                                iconColor: AppColors.black,
                                hintStyle:
                                    const TextStyle(color: Colors.black38),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                focusColor: Colors.yellow,
                                filled: true,
                                fillColor: AppColors.inputFillColor,
                                hintText: "******"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, right: 14),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showPasswordConfirmation =
                                        !showPasswordConfirmation;
                                  });
                                },
                                child: Icon(
                                  showPasswordConfirmation
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.lightBlack,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          checkColor: AppColors.white,
                          side: const BorderSide(
                              color: AppColors.yellow, width: 2),
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = !_value;
                            });
                          }),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text.rich(TextSpan(
                          style: const TextStyle(
                              color: AppColors.white,
                              fontFamily: "Poppins",
                              fontSize: 13),
                          text: "Ao criar sua conta você concorda com os ",
                          children: [
                            WidgetSpan(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: CustomTextComponent(
                                        content: "Termos de Uso",
                                        size: 13,
                                        color: AppColors.links,
                                        ifTruePoppinsElseLato: true))),
                            const WidgetSpan(
                                child: Text(
                              " e ",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 13,
                                  fontFamily: "Poppins"),
                            )),
                            WidgetSpan(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: CustomTextComponent(
                                        content: "Política de Privacidade",
                                        size: 13,
                                        color: AppColors.links,
                                        ifTruePoppinsElseLato: true))),
                          ])),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              BigButtonActionComponent(
                  ifTruePoppinsElseLato: true,
                  label: "Criar conta",
                  backgroundColor: AppColors.confirm,
                  borderRadius: 7,
                  fontSize: 16,
                  borderColor: AppColors.confirm,
                  onTap: () {
                    if (valida()) {
                      MessageUtils.message(
                          context,
                          Row(
                            children: [
                              const Icon(
                                Icons.done,
                                color: AppColors.inputFillColor,
                              ),
                              Expanded(
                                child: CustomTextComponent(
                                    content:
                                        "Seu cadastro foi realizado com sucesso",
                                    size: 15,
                                    color: AppColors.white,
                                    ifTruePoppinsElseLato: true),
                              ),
                            ],
                          ),
                          AppColors.darkConfirm,
                          const Duration(seconds: 1));
                    }
                  }),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
