import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/Cart/Widgets/TopBarIcons/Widgets/OnCartIconWidget.dart';

import '../../../../../config/app_layout.dart';
import '../../../../../config/colors.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: GetHeightinPixels(40),
          width: GetWidthinPixels(40),
          decoration: const BoxDecoration(
            color: mainColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: GetWidthinPixels(20),
            ),
          ),
        ),
        Positioned(
          right: GetWidthinPixels(-5),
          top: GetHeightinPixels(-5),
          child: const OnCartWidget(),
        ),
      ],
    );
  }
}
