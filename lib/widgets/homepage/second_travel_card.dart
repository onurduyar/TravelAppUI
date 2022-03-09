import 'package:flutter/material.dart';
import 'package:travel_app/constants/app_constants.dart';
import 'package:travel_app/models/home_page_card_model.dart';

class SecondTravelCard extends StatelessWidget {
  const SecondTravelCard({required this.index, Key? key}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          width: 320,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 150,
                  child: Image.asset(
                    cardContentList[index].cardImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        cardContentList[index].cardTitle,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 60,
                          ),
                          Text('52 reviews')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
