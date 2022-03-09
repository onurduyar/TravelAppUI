import 'package:flutter/material.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/screens/home_page_screen.dart';
import 'package:travel_app/screens/onboarding_screen.dart';
import 'constants/app_constants.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ThemeData themeData = ThemeData(primaryColor: myPrimaryColor);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: isviewed != 0 ? const OnboardingScreen() : const HomePage(),
    );
  }
}
