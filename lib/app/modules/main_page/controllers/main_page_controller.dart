import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  // FillProfileController fillProfileController =
  //     Get.find<FillProfileController>();

  PageController pageController = PageController();

  List icons = [
    Icons.group,
    Icons.percent,
    Icons.percent,
    Icons.percent,
    Icons.percent,
    Icons.percent,
    Icons.percent,
    Icons.percent,
  ];

  List iconsname = [
    "General",
    "Dentist",
    "Ophthal",
    "Nutritions",
    "Neurologies",
    "Pediatric",
    "Radiology",
    "More"
  ];
}
