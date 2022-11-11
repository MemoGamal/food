// ignore_for_file: camel_case_types

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_code_ecomm_app/Controller/Controller.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

class theDotsIndicator extends StatelessWidget {
  const theDotsIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageViewController>(builder: ((controller) {
      return DotsIndicator(
        dotsCount: Injections.PageViewInjection.itemCount,
        position: Injections.PageViewInjection.pageScrollingValue.value,
        decorator: DotsDecorator(
          size: Size.square(GetWidthinPixels(9)),
          activeSize: Size(GetWidthinPixels(18), GetWidthinPixels(9)),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(GetWidthinPixels(5)),
          ),
        ),
      );
    }));
  }
}
