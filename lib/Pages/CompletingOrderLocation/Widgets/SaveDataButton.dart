import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Feauture/PaymentPage/Screen/PaymentPage.dart';
import 'package:get/get.dart';

import '../../../config/app_layout.dart';
import '../../../config/colors.dart';

class SaveData extends StatelessWidget {
  const SaveData({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const PaymentPage()),
      child: Container(
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(GetWidthinPixels(15)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: GetWidthinPixels(40),
              vertical: GetHeightinPixels(20)),
          child: Text(
            "Save Data",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Number1",
              fontSize: GetWidthinPixels(25),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
