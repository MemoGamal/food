import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

import '../../../../../../../config/TextWidget.dart';

class TotalPriceWidget extends StatelessWidget {
  final int index;
  const TotalPriceWidget({super.key, required this.index});

  Widget build(BuildContext context) {
    return Obx(
      () {
        Injections.CartInjection.Multipier(index);
        return Mytext(
          theText: Injections.CartInjection.Result <= 10
              ? "\$ ${Injections.CartInjection.Result.toString().substring(0, 3)}"
              : "\$ ${Injections.CartInjection.Result.toString().substring(0, 4)}",
          textColour: Colors.red,
          textSize: 25,
        );
      },
    );
  }
}
