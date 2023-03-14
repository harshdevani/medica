import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() =>
            Center(child: controller.bottombarlist[controller.changeindex])),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            selectedItemColor: Colors.indigo,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                label: "Appointment",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article_outlined),
                label: "History",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined),
                label: "Articles",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "Profile",
              ),
            ],
            onTap: controller.tapbottombar,
            currentIndex: controller.changeindex,
          ),
        ));
  }
}
