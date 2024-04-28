import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogreen/app/routes/app_pages.dart';

class Gogreen extends StatelessWidget {
  final String initialRoute;

  const Gogreen({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GOGREEN",
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("fr"),
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    );
  }
}
