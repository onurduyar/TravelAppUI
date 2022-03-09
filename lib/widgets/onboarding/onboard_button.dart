import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/constants/app_constants.dart';
import 'package:travel_app/models/onboarding_content_model.dart';
import 'package:travel_app/screens/home_page_screen.dart';

class OnboardButton extends StatelessWidget {
  const OnboardButton(
      {required this.currentIndex, required this.controller, Key? key})
      : super(key: key);

  final int currentIndex;
  final PageController controller;

  _storeOnboardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: myPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: () {
          if (currentIndex == onboardContentList.length - 1) {
            _storeOnboardInfo();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          }
          controller.nextPage(
              duration: const Duration(milliseconds: 100),
              curve: Curves.bounceIn);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18),
                ),
                margin: const EdgeInsets.only(left: 30, right: 10)),
            const Icon(
              Icons.arrow_right,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
