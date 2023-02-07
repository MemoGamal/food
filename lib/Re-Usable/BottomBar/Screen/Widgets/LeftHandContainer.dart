import 'package:flutter/material.dart';

import '../../../../config/app_layout.dart';

class LeftHandContainer extends StatelessWidget {
  final StatelessWidget ContainerChild;
  final String PageID;
  const LeftHandContainer({
    super.key,
    required this.ContainerChild,
    required this.PageID,
  });

  @override
  Widget build(BuildContext context) {
    switch (PageID) {
      case "CartPage":
        return Container(
          height: GetHeightinPixels(65),
          width: GetWidthinPixels(155),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(GetHeightinPixels(20)),
            color: Colors.white,
          ),
          child: ContainerChild,
        );
      case "ReccomendedFood":
        return Container(
          height: GetHeightinPixels(60),
          width: GetWidthinPixels(90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(GetHeightinPixels(20)),
            color: Colors.white,
          ),
          child: ContainerChild,
        );
      default:
    }
    // The Default Container For Page Undefined in the switch case Above!..
    return Container(
      height: GetHeightinPixels(50),
      width: GetWidthinPixels(80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(GetHeightinPixels(20)),
        color: Colors.white,
      ),
      child: ContainerChild,
    );
  }
}
