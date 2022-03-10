import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_constants.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 4,
          shadowColor: myPrimaryColor,
          primary: myPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Continue',
                style: TextStyle(fontSize: 18),
              ),
              Icon(
                Icons.arrow_right,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
