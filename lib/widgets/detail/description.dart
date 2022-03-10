import 'package:flutter/material.dart';
import 'package:travel_app/models/home_page_card_model.dart';

class CardDescription extends StatelessWidget {
  const CardDescription({required this.index, Key? key}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          height: 150,
          width: double.infinity,
          child: Text(
            cardContentList[index].description,
            style: const TextStyle(height: 1.5),
          ),
        ),
      ),
    );
  }
}
