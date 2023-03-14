import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medica/app/modules/main_page/views/main_page_view.dart';

class HomeController extends GetxController {
  List bottombarlist = [
    const MainPageView(),
    Container(color: Colors.amber),
    Container(color: Colors.black),
    Container(color: Colors.blue),
    Container(color: Colors.green),
  ];

  final _changeindex = 0.obs;
  int get changeindex => _changeindex.value;
  set changeindex(int value) => _changeindex.value = value;

  void tapbottombar(int i) {
    changeindex = i;
  }
}
