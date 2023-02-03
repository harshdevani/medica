import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      body: const Center(
        child: Text(
          'OtpCodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
