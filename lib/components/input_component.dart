import 'package:flutter/material.dart';
import 'package:ln_app/utils/app_colors.dart';

class InputComponent extends StatefulWidget {
  final String placeholder;
  final bool password;
  const InputComponent(
      {super.key, required this.placeholder, required this.password});

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 14, height: 0.1),
      obscureText: widget.password,
      controller: controller,
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.black38),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
          focusColor: Colors.yellow,
          filled: true,
          fillColor: AppColors.inputFillColor,
          hintText: widget.placeholder),
    );
  }
}
