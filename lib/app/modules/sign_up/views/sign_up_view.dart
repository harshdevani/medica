import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Form(
            key: controller.fromkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset(
                    "assets/medicallogo-removebg-preview.png",
                    scale: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Create New Account",
                    style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  controller: controller.phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.call,
                      color: Colors.grey,
                    ),
                    hintText: "Mobile Number",
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
                  height: 15,
                ),
                TextFormField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
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
                  height: 15,
                ),
                Obx(
                  () => TextFormField(
                    controller: controller.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: controller.visiblity,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 26, 23, 23),
                      ),
                      hintText: "password",
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
                      suffixIcon: Obx(() => IconButton(
                            onPressed: () {
                              controller.visiblity = !controller.visiblity;
                            },
                            icon: controller.visiblity
                                ? const Icon(
                                    Icons.visibility,
                                    color: Colors.grey,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                          )),
                    ),
                    validator: (value) =>
                        controller.passwordvalidation(value ?? ''),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Checkbox(
                          value: controller.ischecked,
                          activeColor: Colors.indigo,
                          onChanged: (value) {
                            controller.ischecked = value!;
                          }),
                    ),
                    Text(
                      "Remember me",
                      style: GoogleFonts.urbanist(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.indigo,
                      ),
                      onPressed: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        // if (controller.fromkey.currentState!.validate()) {
                        controller.signup();
                        //}
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(right: 20),
                      ),
                    ),
                    Text(
                      "or continue with",
                      style: GoogleFonts.urbanist(
                        textStyle:
                            const TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(left: 25),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Icon(Icons.facebook),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "assets/google_logo.png",
                          scale: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.apple,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.urbanist(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Colors.black),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.urbanist(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
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
