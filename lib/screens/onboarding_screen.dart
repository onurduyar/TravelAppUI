import 'package:flutter/material.dart';
import 'package:travel_app/widgets/onboarding/content_widget_list.dart';
import 'package:travel_app/widgets/onboarding/onboard_button.dart';

import '../../models/onboarding_content_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(15),
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: onboardContentList.length,
                  itemBuilder: (context, index) => Column(
                    children: contentWidget(index),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardContentList.length,
                (index) => buildDot(context, index),
              ),
            ),
            OnboardButton(
              currentIndex: currentIndex,
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: currentIndex == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? const Color.fromARGB(255, 241, 120, 6)
            : Colors.orangeAccent,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
