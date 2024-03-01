import 'package:flutter/material.dart';

class MessageUtils {
  static void message(BuildContext context, Widget content, Color color,
      Duration duration) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      elevation: 20,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      behavior: SnackBarBehavior.floating,
      content: content,
      duration: duration,
      showCloseIcon: true,
    ));
  }
}
