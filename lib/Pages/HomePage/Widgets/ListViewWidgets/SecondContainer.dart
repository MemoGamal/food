import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import 'package:gap/gap.dart';

import '../bunchOfIcons.dart';

class SecondContainer extends StatelessWidget {
  int index;
  SecondContainer({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidth() - 160,
      // 150 In the first container in a Row. + 20 pixels for padding. in home page!
      height: GetHeightinPixels(130),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(GetWidthinPixels(15)),
            bottomRight: Radius.circular(GetWidthinPixels(15))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mytext(
            theText: Injections.NetworkInjection.Response[index].name, // Name
            textColour: mainBlackColor,
            textSize: 20,
          ),
          Gap(GetHeightinPixels(20)),
          const Mytext(
            theText: "With Chinese Characteristics", //Small Desc..
            textColour: textColor,
          ),
          Gap(GetHeightinPixels(20)),
          const RowofIcons(
            readyOrNot: "normal",
            location: "1.7KM",
            // timeToMakeFood: NetworkInjection.Response[index].totalTime,
            timeToMakeFood: "25 Min",
          ),
        ],
      ),
    );
  }
}
