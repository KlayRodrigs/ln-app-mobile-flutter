import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';

class DixVersionFooterComponent extends StatelessWidget {
  final double size;
  const DixVersionFooterComponent({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0, top: 20),
          child: screenSize.width >= 481
              ? Image.asset("assets/images/logo_dix_grande.png")
              : Image.asset("assets/images/logo_dix.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: CustomTextComponent(
            ifTruePoppinsElseLato: true,
            content: "V 2.0.0.1",
            size: size,
            color: const Color.fromARGB(188, 255, 255, 255),
          ),
        )
      ],
    );
  }
}
