// Splash Screen Untill Data Is Loaded.!

// ignore_for_file: file_names, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/Feauture/Animations/SplashScreen/Widget/AnimatedLoadingScreen.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/Bottom_Bar/BottomBar.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:get/get.dart';

class FetchingContent extends StatelessWidget {
  const FetchingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (Injections.NetworkInjection.isLoading == true) {
          Injections.NetworkInjection.FetchProduct();
          return const AnimatedLoadingScreen();
        } else {
          return const Bottom_Bar();
        }
      },
    );
  }
}
