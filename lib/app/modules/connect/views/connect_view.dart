import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/connect_controller.dart';

class ConnectView extends GetView<ConnectController> {
  const ConnectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 232, 227),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 395),
            child: Center(
              child: Image.asset("assets/images/plant2.png"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 90),
            child: Center(
              child: SizedBox(
                child: Text(
                  "Connect With Other",
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
            padding: EdgeInsets.only(bottom: 10),
            child: Center(
              child: SizedBox(
                child: Text(
                  "Plant Lovers",
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
            padding: EdgeInsets.only(top: 140),
            child: Center(
              child: Text(
                "Join A Community",
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
                    Get.to(() => const ConnectView());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 9),
                    child: const Center(
                      child: Text(
                        "Create Account",
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
