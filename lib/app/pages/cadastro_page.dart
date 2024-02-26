import 'package:flutter/material.dart';
import 'package:ln_app/app/components/appbar_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/components/input_component.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:ln_app/app/utils/messages_utils.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool _value = false;

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
              Padding(
                padding: const EdgeInsets.only(left: 4.0, bottom: 4.0, top: 30),
                child: CustomTextComponent(
                    ifTruePoppinsElseLato: false,
                    content: "Nome completo",
                    weight: FontWeight.w400,
                    size: 16,
                    color: AppColors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: InputComponent(
                    label: "Nome completo",
                    placeholder: "Informe seu nome completo",
                    isPasswordInput: false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                child: CustomTextComponent(
                    ifTruePoppinsElseLato: false,
                    content: "Email",
                    weight: FontWeight.w400,
                    size: 16,
                    color: AppColors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: InputComponent(
                    label: "E-mail",
                    placeholder: "Informe seu E-mail",
                    isPasswordInput: false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                child: CustomTextComponent(
                    ifTruePoppinsElseLato: false,
                    content: "Celular",
                    weight: FontWeight.w400,
                    size: 16,
                    color: AppColors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: InputComponent(
                    label: "Celular",
                    placeholder: "Informe seu celular",
                    isPasswordInput: false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                child: CustomTextComponent(
                    ifTruePoppinsElseLato: false,
                    content: "Senha",
                    weight: FontWeight.w400,
                    size: 16,
                    color: AppColors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: InputComponent(
                    label: "Senha",
                    placeholder: "Informe sua senha",
                    isPasswordInput: true),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
                child: CustomTextComponent(
                    ifTruePoppinsElseLato: false,
                    content: "Confirmar senha",
                    weight: FontWeight.w400,
                    size: 16,
                    color: AppColors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: InputComponent(
                    label: "Confirmar senha",
                    placeholder: "Confirme sua Senha",
                    isPasswordInput: true),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        checkColor: AppColors.white,
                        side:
                            const BorderSide(color: AppColors.yellow, width: 2),
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
