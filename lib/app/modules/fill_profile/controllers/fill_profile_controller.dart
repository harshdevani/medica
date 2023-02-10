import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class FillProfileController extends GetxController {
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

  TextEditingController datecontroller = TextEditingController();
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
}
