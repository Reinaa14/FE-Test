import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/home_page.dart';
import 'package:flutter_application_1/Page/home_screens.dart';
import 'package:flutter_application_1/Page/login_page.dart';
import 'package:flutter_application_1/Page/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(fontFamily: 'KodeMono'),
        debugShowCheckedModeBanner: false,
        home: SplashScreens());
  }
}
