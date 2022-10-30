import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../../../../../../../Re-Usable/BottomBar/BottomBarWidgets/Add&RemoveOrders/Screen/OrderNumber.dart';
import '../../../../../../../config/Injections.dart';
import '../../../../../../../config/TextWidget.dart';
import '../../../../../../../config/app_layout.dart';
import '../../../../../../../config/colors.dart';
import '../Widgets/FoodName.dart';
import '../Widgets/TotalPriceWidget.dart';

class Desc_Container extends StatelessWidget {
  final int index;
  const Desc_Container({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FoodName(index: index),
        Gap(GetWidthinPixels(5)),
        const Mytext(
          theText: "Spicy",
          textColour: textColor,
          dontOverFlowText: false,
          textSize: 20,
        ),
        Gap(GetWidthinPixels(40)),
        // Price Of Food  and +/- Function in a row...
        SizedBox(
          width: GetWidth() - 160, // To get width for now..
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalPriceWidget(index: index),
              // Mytext(theText: "${CartDesc[2]}"),
              OrderNumberCalc(index: index, PageID: "CartPage"),
            ],
          ),
        )
      ],
    );
  }
}
