import 'package:flutter/material.dart';
import 'package:travel_app/models/home_page_card_model.dart';
import 'package:travel_app/widgets/homepage/header.dart';
import 'package:travel_app/widgets/homepage/first_travel_card.dart';
import 'package:travel_app/widgets/homepage/viewall_text_widget.dart';

class OurPropertiesWidget extends StatelessWidget {
  const OurPropertiesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Header(text: 'Our Properties'),
            ViewAllText(),
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardContentList.length,
              itemBuilder: ((context, index) {
                return FirstTravelCard(index: index);
              })),
        ),
      ],
    );
  }
}
