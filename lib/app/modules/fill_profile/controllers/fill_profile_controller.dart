import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class FillProfileController extends GetxController {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController mobilenumberController = TextEditingController();

  Map data = {};
  @override
  void onInit() {
    data = Get.arguments;
    emailController.text = data["Email"].toString();
    mobilenumberController.text = data["Mobile number"].toString();
    super.onInit();
  }

  var gender = [
    "Male",
    "Female",
    "Other",
  ];
  String dropdownvalue = 'Gender';

  final fromkey = GlobalKey<FormState>();
  namevalidation(value) {
    if (value == null || value.isEmpty) {
      return "* Please Enter Name";
    }
    return null;
  }

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

  void datepicker() async {
    DateTime? datepicker = await showDatePicker(
        context: Get.context!,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime.now());
    datecontroller.text = DateFormat('yyyy-MM-dd').format(datepicker!);
  }

  final _img = Rx<File?>(null);
  File? get img => _img.value;
  set img(File? value) => _img.value = value;

  Future getimage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTemporary = File(image.path);

    img = imageTemporary;
    Get.back();
  }

  Future<void> getdata() async {
    try {
      Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: false);
      await FirebaseFirestore.instance.collection("users").doc().set({
        "Full name": fullnameController.text,
        "Date of Birth": datecontroller.text,
        "Email": emailController.text,
        "Mobile number": mobilenumberController.text
      });
      Get.back();
      ScaffoldMessenger.of(Get.context!)
          .showSnackBar(const SnackBar(content: Text("Done")));
    } catch (e) {
      Get.back();
      debugPrint(e.toString());
    }
  }
}
