import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
