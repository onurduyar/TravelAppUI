import 'package:flutter/material.dart';
import 'package:travel_app/models/home_page_card_model.dart';
import 'package:travel_app/widgets/homepage/header.dart';
import 'package:travel_app/widgets/homepage/second_travel_card.dart';
import 'package:travel_app/widgets/homepage/viewall_text_widget.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Header(text: 'Popular'),
              ViewAllText(),
            ],
          ),
          SizedBox(
            height: 102,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardContentList.length,
                itemBuilder: ((context, index) {
                  return SecondTravelCard(index: index);
                })),
          ),
        ],
      ),
    );
  }
}
