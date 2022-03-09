import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  final String userName = 'Niara';
  final String userImagePath = 'assets/images/profilepicture.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(userImagePath),
                  ),
                ),
                const Text(
                  'Hello, ',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  userName + '!',
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 3,
              shadowColor: myPrimaryColor,
              shape: const CircleBorder(),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.notifications_on_outlined,
              color: Colors.black,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }
}
