import 'package:get/get.dart';

import '../controllers/create_new_pin_controller.dart';

class CreateNewPinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewPinController>(
      () => CreateNewPinController(),
    );
  }
}
