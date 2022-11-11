// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Controller/Controller.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

import '../../../../config/Injections.dart';
import '../PageViewWidgets/AllignedContainer.dart';
import '../PageViewWidgets/mainpageviewcontainer.dart';

class thePageView extends StatelessWidget {
  const thePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: Injections.PageViewInjection.itemCount,
      carouselController: Injections.PageViewInjection.theCarosurController,
      // Carsour Controller.

      options: CarouselOptions(
        // Edit here to change allignments.! Position depends on space available to detect bottom Center..

        scrollDirection: Axis.horizontal, height: GetHeightinPixels(275),

        // Edit here to change allignments.! Position depends on space available to detect bottom Center..,
        initialPage: 0, // FirstPage

        // Make's it reversible.. Circle Walkthrough!.
        enableInfiniteScroll: false,
        // Make's it reversible.. Circle Walkthrough!.

        // -> aspectRatio: 2.0, // Size Of Child..

        // Auto jump to the next index of the child in the pageview..

        autoPlay: true,

        // Auto jump to the next index of the child in the pageview..

        // Getting the value of index..

        onPageChanged: (index, reason) {
          Injections.PageViewInjection.pagePosition(index);
        },

        // Getting the value of index..

        // Matrix Animation..

        enlargeCenterPage: true,
        // Matrix Animation..

        // ScrollingValueGetter..
        // PageValue Getter...

        onScrolled: (value) {
          Injections.PageViewInjection.pageValueDetector(value);
        },
        // ScrollingValueGetter..
      ),

      itemBuilder: (context, index, realIndex) {
        // IndexIsPageIndex..
        //SameForrealIndex..
        return Stack(
          children: [
            mainPageViewContainer(
              index: index,
            ),
            AllignedContainer(
              index: index,
            ),
          ],
        );
      },
    );
  }
}
