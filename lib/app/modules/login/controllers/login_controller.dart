import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final _visiblity = false.obs;
  bool get visiblity => _visiblity.value;
  set visiblity(bool value) => _visiblity.value = value;

  final _ischecked = false.obs;
  bool get ischecked => _ischecked.value;
  set ischecked(bool value) => _ischecked.value = value;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Future<void> signin() async {
    try {
      Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: false);
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
        content: Text("Done"),
      ));
      Get.back();
      print("****");
      Get.offAllNamed(Routes.MAIN_PAGE);
    } catch (e) {
      ScaffoldMessenger.of(Get.context!)
          .showSnackBar(const SnackBar(content: Text("Error")));
      Get.back();
      debugPrint(e.toString());
    }
  }
}
