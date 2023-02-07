import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/TextWidget.dart';
import '../../../config/colors.dart';
import '../Screen/SignUpPage.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // To put different colors of texts in a row..
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Mytext(
          theText: "Don't have an account?",
          textColour: textColor,
          textSize: 20,
        ),
        InkWell(
          onTap: () {
            Get.to(() => const SignUpPage());
          },
          child: const Mytext(
            theText: "Create",
            textSize: 20,
          ),
        ),
      ],
    );
  }
}
