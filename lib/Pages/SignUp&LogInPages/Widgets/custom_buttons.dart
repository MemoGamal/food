import 'package:flutter/material.dart';

import '../../../config/app_layout.dart';
import '../../../config/colors.dart';

class CustomButtonContainer extends StatelessWidget {
  final String containerText;
  final double containerSize;
  final VoidCallback onTap;
  const CustomButtonContainer(
      {super.key,
      required this.containerText,
      required this.containerSize,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap, // on tap Function to set navigation to later..
        child: Container(
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(GetHeightinPixels(30)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: GetWidthinPixels(35), // Width of the container
                vertical: GetHeightinPixels(20)), //Height of the container
            child: Text(
              containerText,
              style: TextStyle(
                fontSize: containerSize,
              ), // Sizeof the text Dynamic to be used later in sign up page
            ),
          ),
        ),
      ),
    );
  }
}
