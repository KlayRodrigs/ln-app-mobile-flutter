import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';

class DixVersionFooterComponent extends StatelessWidget {
  const DixVersionFooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0, top: 20),
          child: Image.asset("assets/images/logo_dix.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: CustomTextComponent(
            ifTruePoppinsElseLato: true,
            content: "V 2.0.0.1",
            size: 8,
            color: const Color.fromARGB(188, 255, 255, 255),
          ),
        )
      ],
    );
  }
}
