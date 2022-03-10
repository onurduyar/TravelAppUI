import 'package:flutter/material.dart';
import 'package:travel_app/widgets/homepage/bottom_navbar.dart';
import 'package:travel_app/widgets/homepage/circle_country.dart';
import 'package:travel_app/widgets/homepage/our_properties.dart';
import 'package:travel_app/widgets/homepage/popular.dart';
import 'package:travel_app/widgets/homepage/search_bar.dart';
import 'package:travel_app/widgets/homepage/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: const [
            TopBar(),
            SearchBar(),
            CircleCountry(),
            OurPropertiesWidget(),
            Popular(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(selectedIndex: _selectedIndex),
    );
  }
}
