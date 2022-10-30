// ignore_for_file: file_names, implementation_imports

import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../../config/Injections.dart';
import '../../../../../config/TextWidget.dart';

class Number extends StatelessWidget {
  final int index;
  final String PageID;
  const Number({super.key, required this.index, required this.PageID});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Mytext(
          theText: PageID == "CartPage"
              ? "${Injections.CartInjection.NumberOfOrders[index]}"
              : "${Injections.PriceInjection.Number}",
          textSize: 22,
        );
      },
    );
  }
}
