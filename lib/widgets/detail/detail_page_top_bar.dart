import 'package:flutter/material.dart';

class DetailTopBar extends StatelessWidget {
  const DetailTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: const CircleBorder(),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_left,
              color: Colors.black,
              size: 24,
            ),
          ),
          const Text(
            'Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: const CircleBorder(),
            ),
            onPressed: () {},
            child: Image.asset('assets/images/three_dots.png'),
          ),
        ],
      ),
    );
  }
}
