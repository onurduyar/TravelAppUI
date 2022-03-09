import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_constants.dart';

// ignore: must_be_immutable
class BottomNavbar extends StatefulWidget {
  BottomNavbar({
    Key? key,
    required int selectedIndex,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  int _selectedIndex;
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(200), topRight: Radius.circular(200)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: myPrimaryColor,
            unselectedItemColor: mySecondaryColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int index) {
              setState(() {
                widget._selectedIndex = index;
              });
            },
            currentIndex: widget._selectedIndex,
            items: [
              createBottomNavItem(
                index: 0,
                label: 'Home',
                icon: const Icon(Icons.home, size: 30),
              ),
              createBottomNavItem(
                index: 1,
                label: 'Notifications',
                icon: const Icon(Icons.notifications, size: 30),
              ),
              createBottomNavItem(
                index: 2,
                label: 'Bookmarks',
                icon: const Icon(Icons.bookmark, size: 30),
              ),
              createBottomNavItem(
                index: 3,
                label: 'Profile',
                icon: const Icon(Icons.person, size: 30),
              ),
            ],
          ),
        ));
  }

  BottomNavigationBarItem createBottomNavItem(
      {required int index, required String label, required Icon icon}) {
    return BottomNavigationBarItem(
      label: label,
      icon: Column(
        children: [
          icon,
          Container(
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: widget._selectedIndex == index
                  ? myPrimaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            height: 5,
            width: 5,
          ),
        ],
      ),
    );
  }
}
