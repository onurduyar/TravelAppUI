import 'package:flutter/material.dart';
import 'package:travel_app/models/onboarding_content_model.dart';

List<Widget> contentWidget(int index) {
  return [
    Container(
      margin: index == 0
          ? const EdgeInsets.only(right: 45)
          : const EdgeInsets.all(0),
      width: 300,
      height: 300,
      child: Image.asset(
        onboardContentList[index].image,
      ),
    ),
    const SizedBox(
      height: 20,
    ),
    Text(
      onboardContentList[index].title,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    const SizedBox(
      height: 10,
    ),
    Text(
      onboardContentList[index].description,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 16),
    ),
  ];
}
