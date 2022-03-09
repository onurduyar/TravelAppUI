import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_constants.dart';
import 'package:travel_app/widgets/homepage/header.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(text: 'Find your Stay'),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 60,
                width: 275,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: outlinedBorder(),
                    disabledBorder: outlinedBorder(),
                    errorBorder: outlinedBorder(),
                    focusedBorder: outlinedBorder(),
                    focusedErrorBorder: outlinedBorder(),
                    suffixIcon: const Icon(Icons.search),
                    labelText: 'Search here...',
                    labelStyle: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const SettingsButton(),
            ],
          ),
        ),
      ],
    );
  }

  OutlineInputBorder outlinedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
          width: 2, color: Colors.white, style: BorderStyle.solid),
    );
  }
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String settingsImagePath = 'assets/images/settings.png';
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: myPrimaryColor,
      ),
      width: 35,
      height: 35,
      child: Image.asset(settingsImagePath),
    );
  }
}
