import 'package:flutter/material.dart';

class CircleTravelList extends StatelessWidget {
  const CircleTravelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            4,
            (index) => const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 65,
                    width: 65,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/countries/australia.jpeg'),
                    ),
                  ),
                )),
      ),
    );
  }
}
