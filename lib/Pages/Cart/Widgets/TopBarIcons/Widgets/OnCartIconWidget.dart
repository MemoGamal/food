import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';

class OnCartWidget extends StatelessWidget {
  const OnCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(GetWidthinPixels(4)),
        child: Mytext(theText: "${Injections.CartInjection.MyMap.length}"),
      ),
    );
  }
}
