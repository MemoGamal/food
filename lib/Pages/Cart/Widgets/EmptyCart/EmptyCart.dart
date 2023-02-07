import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import 'package:lottie/lottie.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Lottie.asset(
            "Assets/Animations/15214-shopping-cart-animation.json",
          ),
          Text(
            "Please Add Something in your cart..\nCart is Empty!",
            style: TextStyle(
              fontSize: GetWidthinPixels(25),
              fontWeight: FontWeight.bold,
              fontFamily: "Number1",
              color: paraColor,
            ),
          )
        ],
      ),
    );
  }
}
