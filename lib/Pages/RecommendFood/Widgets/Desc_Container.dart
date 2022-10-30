import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Expandable_Text.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import 'package:gap/gap.dart';

import '../../HomePage/Widgets/PageViewWidgets/ratingFood.dart';
import '../../HomePage/Widgets/bunchOfIcons.dart';

class Desc_Container extends StatelessWidget {
  int index;
  Desc_Container({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidth(),
      height: GetHeight(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(GetWidthinPixels(20)),
          topRight: Radius.circular(GetWidthinPixels(20)),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: GetWidthinPixels(20), vertical: GetHeightinPixels(20)),
        child: Expanded(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food Name
                  Mytext(
                    theText: Injections.NetworkInjection.Response[index].name,
                    textSize: 25,
                  ),
                  Gap(GetHeightinPixels(15)),
                  // Rating stars+text..
                  Row(
                    children: [
                      RatingFood(index: index),
                      Gap(GetWidthinPixels(20)),
                      const Mytext(
                        // theText: "${NetworkInjection.Response[index].rating}",
                        theText: '5',
                        textColour: textColor,
                      ),
                      // AddCommentsLater..
                    ],
                  ),
                  Gap(GetHeightinPixels(15)),
                  // Bunch Of Icons..
                  const RowofIcons(
                    readyOrNot: "Normal",
                    location: "1.7 Km",
                    timeToMakeFood: "30Min",
                  ),
                  // NetworkInjection.Response[index].totalTime),
                  Gap(GetHeightinPixels(15)),
                  // The introduce Text..
                  const Mytext(
                    theText: "Introduce!.",
                    textColour: mainBlackColor,
                    textSize: 25,
                    thisFontWeight: FontWeight.w400,
                  ),
                  Gap(GetHeightinPixels(15)),
                  // Description..
                  ExpandableText(
                      Text: Injections
                          .NetworkInjection.Response[index].description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
