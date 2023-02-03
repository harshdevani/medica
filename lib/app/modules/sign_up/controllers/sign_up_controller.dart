import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
}
