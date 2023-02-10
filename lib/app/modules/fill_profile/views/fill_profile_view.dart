import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/fill_profile_controller.dart';

class FillProfileView extends GetView<FillProfileController> {
  const FillProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Fill Your Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: controller.fromkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Stack(
                  children: [
                    Obx(() => ClipOval(
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: controller.img != null
                                ? Image.file(
                                    controller.img!,
                                    width: 170,
                                    height: 170,
                                    fit: BoxFit.cover,
                                  )
                                : Icon(
                                    Icons.person,
                                    color: Colors.grey[300],
                                    size: 150,
                                  ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 155, left: 145),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () {
                              Get.bottomSheet(Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(25),
                                  child: Wrap(
                                    spacing: 90,
                                    children: [
                                      GestureDetector(
                                        onTap: controller.getphoto,
                                        child: Column(
                                          children: const [
                                            Icon(
                                              Icons.camera_alt_outlined,
                                              size: 50,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "open with camera",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: controller.getimage,
                                        child: Column(
                                          children: const [
                                            Icon(
                                              Icons.image_outlined,
                                              size: 50,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "open with gallery",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ));
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  validator: (value) => controller.namevalidation(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Nickname",
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  validator: (value) => controller.namevalidation(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  readOnly: true,
                  controller: controller.datecontroller,
                  onTap: controller.datepicker,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.date_range_outlined,
                      color: Colors.grey,
                    ),
                    hintText: "Date of Birth",
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.email_rounded,
                      color: Colors.grey,
                    ),
                    hintText: "Email",
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  validator: (value) => controller.emailvalidation(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  onChanged: (value) {
                    controller.dropdownvalue = value!.toString();
                  },
                  items: controller.gender.map(
                    (String e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      );
                    },
                  ).toList(),
                  decoration: InputDecoration(
                    hintText: "Gender",
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (controller.fromkey.currentState!.validate()) {
                      Get.toNamed(Routes.CREATE_NEW_PIN);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350, 60),
                      shape: const StadiumBorder()),
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
