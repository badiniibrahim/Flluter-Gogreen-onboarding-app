import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogreen/app/modules/main/views/main_view.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 112, 85),
      body: GestureDetector(
        onTap: () {
          Get.to(() => const MainView());
        },
        child: Center(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "GO",
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: "GREEN",
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 218, 179),
                    fontSize: 60,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
