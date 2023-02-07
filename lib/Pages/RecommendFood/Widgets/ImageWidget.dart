import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';

import '../IconsRow.dart';

class ImageWidget extends StatelessWidget {
  int index;
  ImageWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: GetWidth(),
          height: GetHeightinPixels(300), // Height of Picture!.
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  Injections.NetworkInjection.ListOfFoodLink[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const RecommendedIconsRow(),
      ],
    );
  }
}
