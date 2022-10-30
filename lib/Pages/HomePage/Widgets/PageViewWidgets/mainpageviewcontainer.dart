// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

import '../../../RecommendFood/Screen/RecommendFood.dart';

class mainPageViewContainer extends StatelessWidget {
  int index;
  mainPageViewContainer({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        () => RecommendedFood(index: index),
        // transition: Transition.downToUp,
        // duration: Duration(microseconds: 1000000),
      ),
      child: Container(
        width: GetWidth(),
        height: GetHeightinPixels(200),
        margin: EdgeInsets.only(
          right: GetWidthinPixels(5),
        ), // Margin to disconnect page1 from page 2..
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                NetworkImage(Injections.NetworkInjection.Response[index].image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            GetWidthinPixels(20),
          ),
        ),
      ),
    );
  }
}
