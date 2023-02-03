import 'dart:async';

import 'package:get/get.dart';

import '../../welcome/views/welcome_view.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    splesh();
    super.onInit();
  }

  void splesh() {
    Timer(
      const Duration(seconds: 3),
      () => Get.to(const WelcomeView()),
    );
  }
}
