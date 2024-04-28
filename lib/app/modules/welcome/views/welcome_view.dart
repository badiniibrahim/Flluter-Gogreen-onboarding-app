import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gogreen/app/modules/main/controllers/main_controller.dart';

import '../controllers/welcome_controller.dart';

// ignore: must_be_immutable
class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/welcome.png"),
          const Positioned(
            top: 60,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Color.fromARGB(255, 45, 105, 54),
                  fontSize: 64,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 150,
            width: 490,
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "we’re glad that that",
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    color: Color.fromARGB(255, 45, 105, 54),
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 150,
            width: 490,
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                child: Text(
                  "you are here",
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    color: Color.fromARGB(255, 45, 105, 54),
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
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
                        curve: Curves.easeInOut);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 5),
                    child: const Text(
                      "Lets get started",
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
        ],
      ),
    );
  }
}
