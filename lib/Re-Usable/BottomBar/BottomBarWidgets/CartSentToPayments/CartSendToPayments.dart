import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';

class CartSentToPayments extends StatelessWidget {
  const CartSentToPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Mytext(
        theText: "Checkout",
        textColour: Colors.white,
        textSize: 25,
      ),
    );
  }
}
