// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedLoadingScreen extends StatelessWidget {
  const AnimatedLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(
            "Assets/Animations/122031-potato.json",
            alignment: Alignment.center,
          ),
          AppBar(
            title: "Data Is Loading...".text.xl4.bold.white.make().shimmer(
                  primaryColor: Vx.purple300,
                  secondaryColor: Vx.black,

                  // duration: Duration(seconds: 10),
                  // count: 10,
                  // showAnimation: false,
                  // showGradient: true,
                  // gradient: LinearGradient(colors: [
                  //   Colors.white,
                  //   Colors.black,
                  // ],),
                ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ).h(100).p(16),
        ],
      ),
    );
  }
}
