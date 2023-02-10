import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/set_your_fingerprint_controller.dart';

class SetYourFingerprintView extends GetView<SetYourFingerprintController> {
  const SetYourFingerprintView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Set Your Fingerprint'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Add a fingerprint to make your account more secure',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 90,
            ),
            const Icon(
              Icons.fingerprint,
              size: 300,
              color: Colors.indigo,
            ),
            const SizedBox(
              height: 90,
            ),
            const Text(
              'Please put your finger on the fingerprint scanner to get started.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() => ElevatedButton(
                      onPressed: () {
                        controller.onclick = true;
                        controller.onclick1 = false;
                        controller.dialog();
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(170, 50),
                          shape: const StadiumBorder(),
                          backgroundColor: controller.onclick
                              ? Colors.indigo
                              : const Color.fromARGB(255, 214, 237, 255)),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 15,
                            color: controller.onclick
                                ? Colors.white
                                : Colors.indigo),
                      ),
                    )),
                Obx(() => ElevatedButton(
                      onPressed: () {
                        controller.onclick = false;
                        controller.onclick1 = true;
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(170, 50),
                          shape: const StadiumBorder(),
                          backgroundColor: controller.onclick1
                              ? Colors.indigo
                              : const Color.fromARGB(255, 214, 237, 255)),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 15,
                            color: controller.onclick1
                                ? Colors.white
                                : Colors.indigo),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
