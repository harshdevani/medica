import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_code_controller.dart';

class OtpCodeView extends GetView<OtpCodeController> {
  const OtpCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('OTP Code Verification'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              controller.forgetPasswordController.button1
                  ? "Code has been send to ${controller.signUpController.phoneController.text}"
                  : "Code has been send to ${controller.signUpController.emailController.text}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                showCursor: true,
                obscureText: true,
                defaultPinTheme: PinTheme(
                  height: 55,
                  width: 55,
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(() => SizedBox(
                  child: controller.second == 0
                      ? TextButton(
                          onPressed: () {
                            controller.second = 5;
                          },
                          child: const Text("Resend code"))
                      : Obx(() =>
                          Text("Resend code in ${controller.second} seconds")),
                )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.CREATE_NEW_PASSWORD);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(350, 60),
                        shape: const StadiumBorder()),
                    child: const Text(
                      "Continue",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
