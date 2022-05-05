import 'package:adota_pet/pet_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final firestoreInstance = FirebaseFirestore.instance;
  final rxPetsList = <PetModel>[].obs;

  @override
  void onInit() async {
    final petsList = await firestoreInstance.collection("pets").get();

    for (final item in petsList.docs) {
      rxPetsList.add(
        PetModel(
          name: item["name"],
          location: item["location"],
          gender: item["gender"],
          description: item["description"],
          urlImg: item["url"],
        ),
      );
    }

    rxPetsList;

    super.onInit();
  }
}
