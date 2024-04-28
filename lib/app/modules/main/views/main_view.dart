import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gogreen/app/modules/connect/views/connect_view.dart';
import 'package:gogreen/app/modules/discover/views/discover_view.dart';
import 'package:gogreen/app/modules/welcome/views/welcome_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  Widget smoothPageIndicator() {
    return SmoothPageIndicator(
      controller: controller.pageController,
      count: 3,
      effect: const ExpandingDotsEffect(
        dotHeight: 10, dotWidth: 20,
        dotColor: Colors.white,
        activeDotColor: Color.fromARGB(255, 45, 105, 54),
        // strokeWidth: 5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(
          init: MainController(),
          builder: (_) {
            return Stack(
              children: [
                PageView(
                  controller: controller.pageController,
                  children: const [
                    WelcomeView(),
                    DiscoverView(),
                    ConnectView(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 30),
                  alignment: AlignmentDirectional.bottomCenter,
                  child: smoothPageIndicator(),
                )
              ],
            );
          }),
    );
  }
}
