import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 100,
          leadingWidth: 70,
          leading: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Container(
                  height: 60,
                  width: 60,
                  color: Colors.grey,
                  child:
                      // controller.fillProfileController.img != null
                      //     ? Image.file(
                      //         controller.fillProfileController.img!,
                      //         fit: BoxFit.cover,
                      //       ):
                      Icon(
                    Icons.person,
                    color: Colors.grey[300],
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Good Morning 👋',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                'Harsh Devani',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  size: 35,
                  color: Colors.black54,
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 35,
                  color: Colors.black54,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.tune),
                  fillColor: Colors.grey[200],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  label: const Text("Search")),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                  controller: controller.pageController,
                  children: const [
                    Slider1(),
                    Slider1(),
                    Slider1(),
                  ]),
            ),
            SmoothPageIndicator(
              controller: controller.pageController,
              count: 5,
              axisDirection: Axis.horizontal,
              effect: const ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Doctor Speciality",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(controller.icons[index]),
                            Text(controller.iconsname[index]),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Slider1 extends StatelessWidget {
  const Slider1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(children: [
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.indigo[300],
              borderRadius: BorderRadius.circular(25),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: SizedBox(
            height: 160,
            width: 235,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Medical Checks!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Expanded(
                  child: Text(
                    "Check your health condition regularly to minimize the incidence of disease in the future.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text(
                      "Check Now",
                      style: TextStyle(
                          color: Colors.indigo, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(25)),
              child: Image.asset(
                "assets/main_page_doctor.png",
                height: 200,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
