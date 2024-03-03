import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ln_app/app/components/appbar_component.dart';
import 'package:ln_app/app/components/big_button_action_component.dart';
import 'package:ln_app/app/components/custom_text_component.dart';
import 'package:ln_app/app/models/user_model.dart';
import 'package:ln_app/app/services/dio_api_service.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';
import 'package:ln_app/app/utils/messages_utils.dart';
import 'package:sizer/sizer.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final DioApiService _apiService = DioApiService();
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
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: AppbarComponent(title: "Criar Conta")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width >= 481 ? 14.w : 30.0),
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
                            size: screenSize.width >= 481 ? 32 : 16,
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
                        style: TextStyle(
                            fontSize: screenSize.width >= 481 ? 26 : 14,
                            height: screenSize.width >= 481 ? 1 : 0.1),
                        controller: nameController,
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                                fontSize: screenSize.width >= 481 ? 20 : 14),
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
                                fontSize: screenSize.width >= 481 ? 20 : 14),
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
                            left: 4.0, right: 4.0, top: 20.0),
                        child: CustomTextComponent(
                            ifTruePoppinsElseLato: false,
                            content: "Celular",
                            weight: FontWeight.w400,
                            size: screenSize.width >= 481 ? 32 : 16,
                            color: AppColors.white),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return "O celular não pode estar em branco";
                          }
                          if (value.length != 15) {
                            return "Celular inválido";
                          }
                          return null;
                        },
                        style: TextStyle(
                            fontSize: screenSize.width >= 481 ? 26 : 14,
                            height: screenSize.width >= 481 ? 1 : 0.1),
                        controller: phoneController,
                        maxLength: 15,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter()
                        ],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            counterText: "",
                            errorStyle: TextStyle(
                                fontSize: screenSize.width >= 481 ? 20 : 14),
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
                            size: screenSize.width >= 481 ? 32 : 16,
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
                                  size: screenSize.width >= 481 ? 40 : null,
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
                            size: screenSize.width >= 481 ? 32 : 16,
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
                            style: TextStyle(
                                fontSize: screenSize.width >= 481 ? 26 : 14,
                                height: screenSize.width >= 481 ? 1 : 0.1),
                            controller: passwordConfirmController,
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
                                  size: screenSize.width >= 481 ? 40 : null,
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
                      padding: const EdgeInsets.only(bottom: 6.0, right: 10),
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          checkColor: AppColors.white,
                          side: BorderSide(
                              color: AppColors.yellow,
                              width: 2,
                              strokeAlign: screenSize.width >= 481 ? 6 : 1),
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = !_value;
                            });
                          }),
                    ),
                    SizedBox(
                      width: screenSize.width >= 481 ? 60.w : 250,
                      child: Text.rich(TextSpan(
                          style: TextStyle(
                              color: AppColors.white,
                              fontFamily: "Poppins",
                              fontSize: screenSize.width >= 481 ? 20 : 13),
                          text: "Ao criar sua conta você concorda com os ",
                          children: [
                            WidgetSpan(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: CustomTextComponent(
                                        content: "Termos de Uso",
                                        size: screenSize.width >= 481 ? 20 : 13,
                                        color: AppColors.links,
                                        ifTruePoppinsElseLato: true))),
                            WidgetSpan(
                                child: Text(
                              " e ",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: screenSize.width >= 481 ? 20 : 13,
                                  fontFamily: "Poppins"),
                            )),
                            WidgetSpan(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: CustomTextComponent(
                                        content: "Política de Privacidade",
                                        size: screenSize.width >= 481 ? 20 : 13,
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
                  fontSize: screenSize.width >= 481 ? 32 : 16,
                  borderColor: AppColors.confirm,
                  onTap: () async {
                    if (valida()) {
                      if (await _apiService.cadastrarUsuario(
                          context: context,
                          user: UserModel(
                              email: emailController.text,
                              password: passwordController.text,
                              phone: phoneController.text,
                              name: nameController.text))) {
                        MessageUtils.message(
                            // ignore: use_build_context_synchronously
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
                                      size: screenSize.width >= 481 ? 28 : 15,
                                      color: AppColors.white,
                                      ifTruePoppinsElseLato: true),
                                ),
                              ],
                            ),
                            AppColors.darkConfirm,
                            const Duration(seconds: 2));
                        await Future.delayed(const Duration(seconds: 3));
                        // ignore: use_build_context_synchronously
                        Navigator.pop(context);
                      }
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
