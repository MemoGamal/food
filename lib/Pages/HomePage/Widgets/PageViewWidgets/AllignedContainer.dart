import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';

import '../bunchOfIcons.dart';
import 'ratingFood.dart';

class AllignedContainer extends StatelessWidget {
  var index;
  AllignedContainer({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: GetWidth() * .80,
        height: GetHeightinPixels(150),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(GetWidthinPixels(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: GetWidthinPixels(20),
              vertical: GetHeightinPixels(20)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Mytext(
                  theText: Injections.NetworkInjection.Response[index].name,
                  textSize: 25,
                  thisFontWeight: FontWeight.w400,
                  textColour: mainBlackColor,
                ),
                // Make Stars Package.!
                RatingFood(
                  index: index,
                ),
                // Make Stars Package.!

                const RowofIcons(
                  readyOrNot: "normal",
                  location: "1.7 km",
                  // timeToMakeFood: NetworkInjection.Response[index].totalTime),
                  timeToMakeFood: "25 Min",
                ),
              ]),
        ),
      ),
    );
  }
}
