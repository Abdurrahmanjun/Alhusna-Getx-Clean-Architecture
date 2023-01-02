import 'package:al_husna/presentation/controllers/intro/intro_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          pages: [
            PageViewModel(
              reverse: true,
              image: buildImage("assets/images/slides_1.png"),
              title: 'Alhusna App',
              body:
                  'Aplikasi Quran Digital Kumuplan Hadits \n dan Jadwal Sholat',
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              reverse: true,
              image: buildImage("assets/images/slides_2.png"),
              title: 'Alhusna App',
              body:
                  'Aplikasi Quran Digital Kumuplan Hadits \n dan Jadwal Sholat',
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              reverse: true,
              image: buildImage("assets/images/slides_3.png"),
              title: 'Alhusna App',
              body:
                  'Aplikasi Quran Digital Kumuplan Hadits \n dan Jadwal Sholat',
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
          ],
          onDone: () {
            if (kDebugMode) {
              print("Done clicked");
            }
          },
          //ClampingScrollPhysics prevent the scroll offset from exceeding the bounds of the content.
          scrollPhysics: const ClampingScrollPhysics(),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: false,
          isBottomSafeArea: true,
          next: const Text("Lanjut",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          done: const Text("Done",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          dotsDecorator: getDotsDecorator()),
    );
  }

  //widget to add the image on screen
  Widget buildImage(String assetName) {
    return Image.asset(assetName);
  }

  //method to customise the page style
  PageDecoration getPageDecoration() {
    return const PageDecoration(
        pageColor: Colors.white,
        bodyPadding: EdgeInsets.only(top: 10),
        titlePadding: EdgeInsets.only(top: 100),
        bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 14),
        bodyFlex: 2,
        imageFlex: 5,
        imagePadding: EdgeInsets.only(bottom: 50));
  }

  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: Colors.deepOrange,
      color: Colors.grey,
    );
  }
}
