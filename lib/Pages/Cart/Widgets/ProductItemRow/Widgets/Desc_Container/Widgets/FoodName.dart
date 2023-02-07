import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';

import '../../../../../../../config/Injections.dart';
import '../../../../../../../config/TextWidget.dart';
import '../../../../../../../config/colors.dart';

class FoodName extends StatelessWidget {
  int index;
  FoodName({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var CartDesc = Injections.CartInjection.MyMap[index]!.toList();

    return SizedBox(
      width: GetWidth() - 160,
      child: Mytext(
        theText: CartDesc[1],
        textColour: mainBlackColor,
        dontOverFlowText: false,
        textSize: 25,
      ),
    );
  }
}
