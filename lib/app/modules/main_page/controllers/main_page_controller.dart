import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  // FillProfileController fillProfileController =
  //     Get.find<FillProfileController>();

  PageController pageController = PageController();

  List icons = [
    Icons.group,
    FontAwesomeIcons.tooth,
    Icons.remove_red_eye,
    Icons.percent,
    FontAwesomeIcons.percent,
    Icons.percent,
    Icons.percent,
    Icons.more_horiz,
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
