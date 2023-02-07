import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/CompletingOrderLocation/Widgets/AppBarWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const TheAppBar(Title: "Payment Method"),
        Text(
          "Payment Method",
          style: TextStyle(
            fontFamily: "Number1",
            fontSize: GetWidthinPixels(25),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ));
  }
}
