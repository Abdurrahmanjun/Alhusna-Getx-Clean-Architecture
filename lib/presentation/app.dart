import 'package:al_husna/presentation/pages/intro/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:al_husna/presentation/controllers/auth/auth_binding.dart';
import 'package:al_husna/presentation/pages/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: AuthBinding(),
      home: IntroPage(),
    );
  }
}
