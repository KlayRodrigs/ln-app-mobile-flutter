import 'package:flutter/material.dart';
import 'package:ln_app/app/components/custom_text_component.dart';

class MenuButtonComponent extends StatelessWidget {
  final String content;
  final String icon;
  final Color color;
  final double size;
  final bool ifTruePoppinsElseLato;
  const MenuButtonComponent(
      {super.key,
      required this.icon,
      required this.color,
      required this.size,
      required this.ifTruePoppinsElseLato,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return MenuItemButton(
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(icon),
            const SizedBox(
              width: 20,
            ),
            CustomTextComponent(
                content: content,
                size: size,
                color: color,
                ifTruePoppinsElseLato: ifTruePoppinsElseLato)
          ],
        ));
  }
}
