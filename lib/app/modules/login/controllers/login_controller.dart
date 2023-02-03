import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _visiblity = false.obs;
  bool get visiblity => _visiblity.value;
  set visiblity(bool value) => _visiblity.value = value;

  final _ischecked = false.obs;
  bool get ischecked => _ischecked.value;
  set ischecked(bool value) => _ischecked.value = value;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Future<void> login() async {
    try {
      final dio = Dio();
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
      );
      final response = await dio.post("https://d3wqw.mocklab.io/login", data: {
        "email": emailcontroller.text,
        "password": passwordcontroller.text
      });
      Get.back();
      Get.snackbar("success", response.data["message"]);
    } catch (e) {
      Get.back();
      debugPrint(e.toString());
    }
  }
}
