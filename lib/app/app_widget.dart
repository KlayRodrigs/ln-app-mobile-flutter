import 'package:flutter/material.dart';
import 'package:ln_app/app/pages/loading_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ln App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
      ),
      home: const LoadingPage(),
    );
  }
}
