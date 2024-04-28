import 'package:flutter/material.dart';
import 'package:gogreen/app/routes/app_pages.dart';

import 'app/gogreen.dart';

Future<void> main() async {
  final String initialRoute = await Routes.INITIAL;
  runApp(Gogreen(initialRoute: initialRoute));
}
