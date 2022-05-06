import 'package:adota_pet/pet_model.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.item}) : super(key: key);
  final PetModel item;

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
            Row(
              children: [
                Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 45,
                  color: Color(0xFFa55eea),
                ),
                SizedBox(
                  width: Get.width * .03,
                ),
                Text(
                  "Detalhes de " + item.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * .03,
            ),
            Container(
              width: double.infinity,
              height: Get.height * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    item.urlImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * .05,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Sobre mim",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .03,
                  ),
                  Text(
                    item.description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .03,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * .03,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: Get.width * .15,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FluentIcons.heart_28_filled,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 1,
                      primary: Color(0xFFa55eea),
                    ),
                  ),
                ),
                SizedBox(width: Get.width * .03),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Adotar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                        primary: Color(0xFFa55eea),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.height * .03,
            ),
          ],
        ),
      ),
    );
  }
}
