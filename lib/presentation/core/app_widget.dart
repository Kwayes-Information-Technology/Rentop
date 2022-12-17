import 'package:flutter/material.dart';
import 'package:rentop/infrastructure/style/style.dart';
import 'package:rentop/presentation/splash/splash_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: rentopTheme(),
      locale: const Locale('en', "US"),
      home: const SplashScreen(),
    );
  }
}
