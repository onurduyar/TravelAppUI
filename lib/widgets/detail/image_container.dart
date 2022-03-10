import 'package:flutter/material.dart';
import 'package:travel_app/models/home_page_card_model.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({required this.index, Key? key}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        cardContentList[index].cardTitle,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Text(
                            cardContentList[index].cardLocation,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.heart_broken_sharp,
                        color: Colors.white,
                      ),
                    ],
                  )
                ]),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(cardContentList[index].cardImagePath),
          )),
          height: 280,
          width: double.infinity,
        ),
      ),
    );
  }
}
