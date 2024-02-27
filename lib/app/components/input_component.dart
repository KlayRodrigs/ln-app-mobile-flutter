import 'package:flutter/material.dart';
import 'package:ln_app/app/utils/app_colors_utils.dart';

class InputComponent extends StatefulWidget {
  final String label;
  final String placeholder;
  final bool isPasswordInput;

  const InputComponent({
    super.key,
    required this.placeholder,
    required this.isPasswordInput,
    required this.label,
  });

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  @override
  void initState() {
    super.initState();
    if (widget.isPasswordInput) {
      showPassword = true;
    }
  }

  bool showPassword = false;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      obscureText: showPassword,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: widget.isPasswordInput
              ? InkWell(
                  onTap: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  child: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          iconColor: Colors.black,
          hintStyle: const TextStyle(color: Colors.black38),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
          focusColor: Colors.yellow,
          filled: true,
          fillColor: AppColors.inputFillColor,
          hintText: widget.placeholder),
    );
  }
}
