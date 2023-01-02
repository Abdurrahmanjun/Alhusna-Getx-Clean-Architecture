import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  late List<Widget> slideList;
  late int initialPage;

  @override
  void onInit() {
    initialPage = 2;
    super.onInit();
  }
}
