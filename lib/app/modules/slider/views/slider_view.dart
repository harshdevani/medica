import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/slider_controller.dart';

class SliderView extends GetView<SliderController> {
  const SliderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CarouselSlider(
            carouselController: controller.carouselController,
            items: controller.img.map((e) {
              return Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Obx(() => Image.asset(
                      controller.img[controller.value],
                      fit: BoxFit.fitWidth,
                    )),
              );
            }).toList(),
            options: CarouselOptions(
              height: 550,
              initialPage: 0,
              enableInfiniteScroll: false,
              onScrolled: (value) {
                controller.value = value!.toInt();
                controller.dot = value.toInt();
              },
            ),
          ),
          CarouselSlider(
            carouselController: controller.carouselController,
            items: controller.text.map((e) {
              return Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Obx(
                  () => Text(
                    controller.text[controller.value],
                    style: const TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 150,
              initialPage: 0,
              enableInfiniteScroll: false,
              onScrolled: (value) {
                controller.value = value!.toInt();
                controller.dot = value.toInt();
              },
            ),
          ),
          Obx(() =>
              DotsIndicator(dotsCount: 3, position: controller.dot.toDouble())),
          ElevatedButton(
            onPressed: () {
              controller.value == 2
                  ? Get.toNamed(Routes.SIGN_IN)
                  : controller.carouselController.nextPage();
            },
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: Obx(
              () => Text(
                controller.value == 2 ? "Done" : "Next",
                style: const TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
