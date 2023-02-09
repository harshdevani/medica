import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medica/app/modules/welcome/views/welcome_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: const WelcomeView(),
      theme: ThemeData(fontFamily: 'mulish', primarySwatch: Colors.indigo),
    );
  }
}