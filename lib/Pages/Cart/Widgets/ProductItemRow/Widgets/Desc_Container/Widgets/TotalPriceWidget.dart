import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:get/get.dart';

import '../../../../../../../config/TextWidget.dart';

class TotalPriceWidget extends StatelessWidget {
  final int index;
  const TotalPriceWidget({super.key, required this.index});
  Widget build(BuildContext context) {
    return Obx(
      () {
        Injections.CartInjection.Price =
            Injections.CartInjection.MyMap[index][3];

        Injections.CartInjection.Multipier(index);

        return Mytext(
          theText: Injections.CartInjection.Result.toString(),
          textColour: Colors.red,
          textSize: 25,
        );
      },
    );
  }
}
