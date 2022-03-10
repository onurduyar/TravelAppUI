import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_constants.dart';
import 'package:travel_app/models/home_page_card_model.dart';
import 'package:travel_app/screens/detail_screen.dart';

class FirstTravelCard extends StatelessWidget {
  const FirstTravelCard({required this.index, Key? key}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          width: 260,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    index: index,
                                  )));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: 240,
                        child: Image.asset(
                          cardContentList[index].cardImagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardContentList[index].cardTitle,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: myPrimaryColor,
                          ),
                          Text(cardContentList[index].cardLocation),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    index: index,
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: myPrimaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: 20,
                      height: 20,
                      child: const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
