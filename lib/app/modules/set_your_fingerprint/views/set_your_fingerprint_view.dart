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
      body: Column(
        children: [
          const Center(
            child: Text(
              '',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // controller.dialog();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(170, 50),
                    shape: const StadiumBorder()),
                child: const Text(
                  "Skip",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // controller.dialog();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(170, 50),
                    shape: const StadiumBorder()),
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
