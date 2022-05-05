import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3490dc),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: Get.height * .3,
              child: Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_5JFpAw.json',
              ),
            ),
          ),
          // SizedBox(
          //   height: Get.height * .03,
          // ),
          // Text(
          //   "Carregando...",
          //   style: GoogleFonts.carterOne(
          //     fontSize: 35,
          //     color: Colors.blue,
          //     fontWeight: FontWeight.w900,
          //   ),
          // )
        ],
      ),
    );
  }
}
