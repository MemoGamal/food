// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../config/app_layout.dart';

class FailedConnection extends StatelessWidget {
  final String ErrorMessage;
  const FailedConnection({Key? key, required this.ErrorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(
            "Assets/Animations/122395-spooky-cat-playing-with-eye-ball.json",
          ),
          Text(
            ErrorMessage,
            // "Whoooops Sounds Like No Internet Connection..",
            style: TextStyle(
              fontSize: GetWidthinPixels(23),
              overflow: TextOverflow.visible,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
