import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/Bottom_Bar/BottomBar.dart';
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
                // Basically if we are choosing cart from bottom bar it re-select the bottombar index to 0
                // Which is Home.. and then it updates that value and get builder re-build the widget
                // So it rebuild 0 widget which is home and bottom bar is re renderd..
              }
            : {
                // We're choosing bottom bar here because it's only way to access Reccommended food/Popular food
                // is in the homepage so bottombar value is zero no need to change it back!..
                Get.to(const Bottom_Bar()),
              };
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
