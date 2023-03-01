import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final _visiblity = false.obs;
  bool get visiblity => _visiblity.value;
  set visiblity(bool value) => _visiblity.value = value;

  final _ischecked = false.obs;
  bool get ischecked => _ischecked.value;
  set ischecked(bool value) => _ischecked.value = value;

  bool? passwordvalid;
  emailvalidation(value) {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value ?? '');
    if (value == null || value.isEmpty) {
      return "* Please Enter Email";
    } else if (!emailValid) {
      return "* Please Enter Valid Email";
    }
    return null;
  }

  passwordvalidation(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else if (value.length < 8) {
      return 'minimum length is 8 characters';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  final fromkey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: false);
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      Get.back();
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
        content: Text("Done"),
      ));
      Get.toNamed(Routes.FILL_PROFILE, arguments: emailController.text);
    } catch (e) {
      Get.back();
      ScaffoldMessenger.of(Get.context!)
          .showSnackBar(const SnackBar(content: Text("Done")));
      debugPrint(e.toString());
    }
  }
}
