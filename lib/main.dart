import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_parking/views/camera.dart';
// import 'package:get/get.dart';
import 'package:smart_parking/views/checkin.dart';
import 'package:smart_parking/views/checkout.dart';
import 'package:smart_parking/views/home.dart';
import 'package:smart_parking/views/welcome.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomePage(),
        "/home": (context) => Home(),
        "/checkin": (context) => Checkin(),
        "/checkout": (context) => Checkout(),
        "/camera": (context) => CameraPage(),
      },
    ),
  );
}
