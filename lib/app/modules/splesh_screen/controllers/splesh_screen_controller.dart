import 'dart:async';

import 'package:get/get.dart';
import 'package:medica/app/modules/welcome/views/welcome_view.dart';

class SpleshScreenController extends GetxController {
  @override
  void onInit() {
    splesh();
    super.onInit();
  }

  void splesh() {
    Timer(
      const Duration(seconds: 3),
      () => Get.offAll(const WelcomeView()),
    );
  }
}
