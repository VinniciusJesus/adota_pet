import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3F4),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: Get.statusBarHeight,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: Get.height * .25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFa55eea),
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * .45,
                    child: Text(
                      "Adote o seu PET favorito".toUpperCase(),
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_tr1pjkop.json',
                      height: Get.height * .26,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * .05,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: Get.height * .25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Get.width * .3,
                      height: Get.height * .3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/84/48/c8/8448c8666642b94395a81945bf2af015.jpg"))),
                    ),
                  ),
                  Expanded(
                    child: Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_tr1pjkop.json',
                      height: Get.height * .26,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
