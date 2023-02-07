import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

import '../../../../../config/colors.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Check if BottomBar is in item 3..
        Injections.BottomBarInjection.ScreenPage.value == 2
            ? {
                Injections.BottomBarInjection.ChangeScreen(0),
              }
            : Get.back();
      },
      child: Container(
        height: GetHeightinPixels(40),
        width: GetWidthinPixels(40),
        decoration: const BoxDecoration(
          color: mainColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: GetWidthinPixels(15),
            ),
          ),
        ),
      ),
    );
  }
}
