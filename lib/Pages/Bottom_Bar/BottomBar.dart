// ignore_for_file: no_leading_underscores_for_local_identifiers, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Controller/Controller.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Cart/Screen/Cart.dart';
import '../HomePage/Screen/HomePage.dart';
import 'BottomBarWidget.dart';

class Bottom_Bar extends StatelessWidget {
  const Bottom_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> _WidgetOption = <Widget>[
      const HomePage(),
      const Text("User Favorite"),
      const Cart(),
      const Text("User Settings"),
    ];

    return Scaffold(
      // backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: GetBuilder<BottomBarController>(
          builder: (controller) {
            return Scaffold(
              body:
                  _WidgetOption[Injections.BottomBarInjection.ScreenPage.value],
              bottomNavigationBar: BottomBarWidget(),
            );
          },
        ),
      ),
    );
  }
}
