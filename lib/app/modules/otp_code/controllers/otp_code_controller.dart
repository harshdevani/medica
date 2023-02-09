import 'dart:async';

import 'package:get/get.dart';
import 'package:medica/app/modules/forget_password/controllers/forget_password_controller.dart';

import '../../sign_up/controllers/sign_up_controller.dart';

class OtpCodeController extends GetxController {
  SignUpController signUpController = Get.find<SignUpController>();

  ForgetPasswordController forgetPasswordController =
      Get.find<ForgetPasswordController>();

  final _second = 5.obs;
  int get second => _second.value;
  set second(int value) => _second.value = value;

  @override
  void onInit() {
    resendtime();
    super.onInit();
  }

  resendtime() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (second > 0) {
        second--;
      }
    });
  }

  void onclose() {
    resendtime();
    super.onClose();
  }
}
