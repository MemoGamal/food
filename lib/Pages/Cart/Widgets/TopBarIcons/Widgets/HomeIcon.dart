import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/Injections.dart';
import '../../../../../config/app_layout.dart';
import '../../../../../config/colors.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
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
          child: Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: GetWidthinPixels(20),
          ),
        ),
      ),
    );
  }
}
