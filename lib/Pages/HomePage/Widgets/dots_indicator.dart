// ignore_for_file: camel_case_types

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_code_ecomm_app/Controller/Controller.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
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
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      );
    }));
  }
}
