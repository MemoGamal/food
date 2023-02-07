// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:get/get.dart';

import '../../../../Controller/Controller.dart';
import '../../../../config/TextWidget.dart';

class PriceToCart extends StatelessWidget {
  int index;
  PriceToCart({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Injections.PriceInjection.Price =
        Injections.NetworkInjection.ListOfFoodPrice[index];
    Injections.PriceInjection.PriceMultiplier();
    return GetBuilder<OrderGetterController>(
      builder: (controller) {
        return Center(
          child: Mytext(
            theText: "${Injections.PriceInjection.Result} | Add To Cart",
            textSize: 20,
            textColour: Colors.white,
          ),
        );
      },
    );
  }
}
