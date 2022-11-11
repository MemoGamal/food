// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Controller/Controller.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../Feauture/Init/Init.dart';
import '../Widgets/ListView/ListView.dart';
import '../Widgets/TopBarWidgets/custom_Row.dart';
import '../Widgets/PageView/thePageView.dart';
import '../Widgets/dots_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: SizedBox(
          height: GetHeight(),
          child: ListView(
            children: [
              const customRow(),
              const thePageView(),
              Gap(GetHeightinPixels(10)),
              const theDotsIndicator(),
              Gap(GetHeightinPixels(10)),
              Row(
                children: [
                  Gap(GetWidthinPixels(10)),
                  const Mytext(
                    theText: "Popular .",
                    textColour: mainBlackColor,
                    textSize: 25,
                  ),
                  Gap(GetWidthinPixels(20)),
                  const Mytext(
                    theText: "Food pairing",
                    textColour: textColor,
                  ),
                ],
              ),
              Gap(GetHeightinPixels(20)),
              const theListView(),
            ],
          ),
        ),
      ),
    );
  }
}
