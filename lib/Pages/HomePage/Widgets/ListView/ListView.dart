// ignore_for_file: file_names, camel_case_types

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

import '../../../PopularFood/Screen/PopularFood.dart';
import '../ListViewWidgets/FirstContainer.dart';
import '../ListViewWidgets/SecondContainer.dart';

class theListView extends StatelessWidget {
  const theListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        // itemCount: NetworkInjection.Response.length,
        itemCount: 6,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return InkWell(
            // Navigation..
            onTap: () => Get.to(() => PopularFood(index: index)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: GetWidthinPixels(10),
                    top: GetWidthinPixels(10),
                  ),
                ),
                FirstContainer(index: index),
                SecondContainer(index: index),
              ],
            ),
          );
        },
      ),
    );
  }
}
