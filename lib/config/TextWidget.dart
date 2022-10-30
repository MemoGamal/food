// ignore_for_file: prefer_if_null_operators, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';

class Mytext extends StatelessWidget {
  final String theText;
  final Color? textColour;
  final double? textSize;
  final FontWeight? thisFontWeight;
  final bool? dontOverFlowText;
  const Mytext({
    super.key,
    required this.theText,
    this.textColour,
    this.textSize,
    this.thisFontWeight,
    this.dontOverFlowText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      theText, // The Text i'm going to enter to use the TextWidget!.
      style: TextStyle(
        color: textColour == null
            ? mainBlackColor
            : textColour, //Default Color is Black
        fontSize: textSize == null
            ? GetHeightinPixels(15)
            : textSize, //Default Size is 15
        fontFamily: "Roboto",
        fontWeight: thisFontWeight == null
            ? FontWeight.w400
            : thisFontWeight, // Only used if needed.
        overflow: dontOverFlowText == false
            ? TextOverflow.ellipsis
            : TextOverflow.visible,
      ),
    );
  }
}
