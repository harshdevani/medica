import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  final _visiblity = false.obs;
  bool get visiblity => _visiblity.value;
  set visiblity(bool value) => _visiblity.value = value;

  final _visiblity1 = false.obs;
  bool get visiblity1 => _visiblity1.value;
  set visiblity1(bool value) => _visiblity1.value = value;

  final _ischecked = false.obs;
  bool get ischecked => _ischecked.value;
  set ischecked(bool value) => _ischecked.value = value;

  void dialog() {
    showDialog(
      context: Get.context!,
      builder: (context) {
        Future.delayed(
          const Duration(seconds: 3),
          () {
            Navigator.of(context).pop(true);
          },
        );
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: SvgPicture.asset(
            "assets/security_on.svg",
            height: 100,
            width: 100,
          ),
          content: SingleChildScrollView(
            child: Column(
              children: const [
                Text(
                  'Congratulations!',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Your account is ready to use. You will be redirected to the Home page in a few seconds.',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                SpinKitCircle(
                  size: 60,
                  color: Colors.indigo,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
