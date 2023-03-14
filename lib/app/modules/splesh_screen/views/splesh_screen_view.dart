import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

import '../controllers/splesh_screen_controller.dart';

class SpleshScreenView extends GetView<SpleshScreenController> {
  const SpleshScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpleshScreenView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                height: 70,
                width: 70,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Medica",
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
          const SpinKitCircle(
            size: 60,
            color: Colors.indigo,
          )
        ],
      ),
    );
  }
}
