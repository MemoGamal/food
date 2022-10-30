// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import 'package:gap/gap.dart';

class RowofIcons extends StatelessWidget {
  final String readyOrNot;
  final String location;
  final String timeToMakeFood;
  const RowofIcons(
      {super.key,
      required this.readyOrNot,
      required this.location,
      required this.timeToMakeFood});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.circle,
              color: iconColor1,
            ),
            Gap(GetHeightinPixels(5)),
            Mytext(
              theText: readyOrNot,
              textColour: textColor,
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: mainColor,
            ),
            Gap(GetHeightinPixels(5)),
            Mytext(
              theText: location,
              textColour: textColor,
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.access_time_rounded,
              color: iconColor2,
            ),
            Gap(GetHeightinPixels(5)),
            Mytext(
              theText: timeToMakeFood,
              textColour: textColor,
            ),
          ],
        ),
      ],
    );
  }
}
