import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gogreen/app/modules/main/controllers/main_controller.dart';

import '../controllers/discover_controller.dart';

class DiscoverView extends GetView<DiscoverController> {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 232, 227),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Image.asset("assets/images/plant1.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 190),
            child: Center(
              child: SizedBox(
                child: Text(
                  "Discover Your Type",
                  style: TextStyle(
                    color: Color.fromARGB(255, 45, 105, 54),
                    fontSize: 30,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 110),
            child: Center(
              child: SizedBox(
                child: Text(
                  "Of Plant",
                  style: TextStyle(
                    color: Color.fromARGB(255, 45, 105, 54),
                    fontSize: 30,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                "Tips N Tricks to grow a",
                style: TextStyle(
                  color: Color.fromARGB(255, 45, 105, 54),
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 90),
            child: Center(
              child: Text(
                "healthy plant",
                style: TextStyle(
                  color: Color.fromARGB(255, 45, 105, 54),
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 90,
            right: 0,
            child: SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll<Color>(
                        Color.fromARGB(255, 45, 105, 54)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.put(MainController()).pageController.nextPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeInOut,
                        );
                  },
                  child: Container(
                    width: 160,
                    margin: const EdgeInsets.only(top: 20, bottom: 5),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
