import 'package:adota_pet/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await 2.delay();
    Get.to(HomePage());
    super.onInit();
  }
}
