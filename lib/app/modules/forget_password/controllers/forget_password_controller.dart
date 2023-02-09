import 'package:get/get.dart';
import 'package:medica/app/modules/sign_up/controllers/sign_up_controller.dart';

class ForgetPasswordController extends GetxController {
  SignUpController signUpController = Get.find<SignUpController>();
  final _button1 = false.obs;
  bool get button1 => _button1.value;
  set button1(bool value) => _button1.value = value;

  final _button2 = false.obs;
  bool get button2 => _button2.value;
  set button2(bool value) => _button2.value = value;
}
