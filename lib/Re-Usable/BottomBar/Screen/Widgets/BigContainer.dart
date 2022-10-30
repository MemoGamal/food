import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../config/app_layout.dart';
import '../../../../config/colors.dart';

class BigContainer extends StatelessWidget {
  StatelessWidget ContainerChild;
  BigContainer({super.key, required this.ContainerChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: GetWidth(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(GetHeightinPixels(30)),
          topLeft: Radius.circular(GetHeightinPixels(30)),
        ),
        color: textColor,
      ),
      child: ContainerChild,
    );
  }
}
