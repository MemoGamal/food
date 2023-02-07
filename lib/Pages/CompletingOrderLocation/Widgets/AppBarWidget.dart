import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../config/colors.dart';

class TheAppBar extends StatelessWidget {
  final String Title; // To make it re-usable Widget
  const TheAppBar({super.key, required this.Title});

  @override
  Widget build(BuildContext context) {
    return VxAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: mainColor,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: Center(child: Text(Title)),
    );
  }
}
