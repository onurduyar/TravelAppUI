import 'package:flutter/material.dart';
import 'package:travel_app/models/country_model.dart';

class CircleCountry extends StatelessWidget {
  const CircleCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SizedBox(
        child: ListView.builder(
          itemCount: countryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(countryList[index].countryImagePath),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(countryList[index].countryName),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
