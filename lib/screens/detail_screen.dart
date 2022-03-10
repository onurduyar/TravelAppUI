import 'package:flutter/material.dart';
import 'package:travel_app/models/home_page_card_model.dart';
import 'package:travel_app/widgets/detail/circle_travel_list.dart';
import 'package:travel_app/widgets/detail/continue_button.dart';
import 'package:travel_app/widgets/detail/description.dart';
import 'package:travel_app/widgets/detail/detail_page_buttons.dart';
import 'package:travel_app/widgets/detail/detail_page_top_bar.dart';
import 'package:travel_app/widgets/detail/image_container.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.index, Key? key}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    final String amount = "\$" "${cardContentList[index].amount}";
    return Scaffold(
      body: Column(
        children: [
          const DetailTopBar(),
          ImageContainer(index: index),
          const CircleTravelList(),
          const DetailButtons(),
          CardDescription(index: index),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      amount,
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w900),
                    ),
                    const Text(
                      '/Person',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const ContinueButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
