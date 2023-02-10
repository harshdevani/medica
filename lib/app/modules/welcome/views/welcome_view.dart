import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 250,
        ),
        Image.asset("assets/image1.jpg"),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.SLIDER);
            },
            child: const Text(
              "Welcome to \n Medica 👋",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "The best online doctor appointment & consultation app of the century for your health and medical needs!",
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 20)),
        )
      ],
    ));
  }
}
