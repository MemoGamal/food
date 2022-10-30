import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';

import '../../../../config/app_layout.dart';
import '../../BottomBarWidgets/CartSentToPayments/CartSendToPayments.dart';
import '../../BottomBarWidgets/Price&SentToCart/PriceGetter&SendToCart.dart';

class RightHandContainerChild extends StatelessWidget {
  final String PageID;
  const RightHandContainerChild({super.key, required this.PageID});

  @override
  Widget build(BuildContext context) {
    var ContainerChild;
    switch (PageID) {
      case "ReccomendedFood":
        return ContainerChild = const PriceToCart();
      case "CartPage":
        return ContainerChild = const CartSentToPayments();
      case "PopularFood":
        return ContainerChild = const PriceToCart();
      default:
    }
    return Container(
      height: 60,
      width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          GetHeightinPixels(20),
        ),
      ),
      child: ContainerChild,
    );
  }
}
