import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

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
              height: Get.height * .15,
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
                      "Adote o seu PET favorito! \n",
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
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
              height: Get.height * .03,
            ),
            Obx(() => SizedBox(
                  height: Get.height,
                  child: ListView.builder(
                    itemCount: controller.rxPetsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = controller.rxPetsList[index];
                      return Column(
                        children: [
                          PetCard(
                            gender: item.gender,
                            location: item.location,
                            name: item.name,
                            urlImg: item.urlImg,
                          ),
                          SizedBox(
                            height: Get.height * .03,
                          ),
                        ],
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class PetCard extends StatelessWidget {
  const PetCard({
    Key? key,
    required this.name,
    required this.location,
    required this.gender,
    required this.urlImg,
  }) : super(key: key);

  final String name;
  final String location;
  final String gender;
  final String urlImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .15,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
            child: Container(
              width: Get.width * .32,
              height: Get.height * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      urlImg,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Row(
                  children: [
                    Icon(
                      FluentIcons.location_20_regular,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: Get.width * .01,
                    ),
                    SizedBox(
                      width: Get.width * .45,
                      child: Text(
                        location,
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      FluentIcons.animal_dog_20_regular,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: Get.width * .01,
                    ),
                    Text(
                      gender,
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * .04,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
