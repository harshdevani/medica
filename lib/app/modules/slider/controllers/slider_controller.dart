import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  List img = [
    "assets/doctor1.jpg",
    "assets/doctor2.jpg",
    "assets/doctor3.jpg",
  ];
  List text = [
    "Thousands of\n doctors & experts to \n help your health!",
    "Health checks & \n consultations easily \n anywhere anytime",
    "Let's start living \n healthy and well \n with us right now!"
  ];

  final _value = 0.obs;
  int get value => _value.value;
  set value(int value) => _value.value = value;

  final _dot = 0.obs;
  int get dot => _dot.value;
  set dot(int value) => _dot.value = value;

  CarouselController carouselController = CarouselController();
}
