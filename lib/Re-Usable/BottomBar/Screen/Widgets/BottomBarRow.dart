// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Re-Usable/BottomBar/Screen/Widgets/RightHandContainer.dart';
import 'package:flutter_clean_code_ecomm_app/Re-Usable/BottomBar/Screen/Widgets/RightHandContainerChild.dart';
import 'package:flutter_clean_code_ecomm_app/Re-Usable/BottomBar/Screen/Widgets/LeftHandContainer.dart';
import 'package:flutter_clean_code_ecomm_app/Re-Usable/BottomBar/Screen/Widgets/LeftHandContainerChild.dart';

import '../../../../config/app_layout.dart';
import '../../BottomBarWidgets/Price&SentToCart/PriceGetter&SendToCart.dart';

class RowOfContainers extends StatelessWidget {
  final String PageID;
  final int index;
  const RowOfContainers({
    super.key,
    required this.PageID,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    double TheHorizontalPaddingValue = 0.0;

    switch (PageID) {
      case "ReccomendedFood":
        TheHorizontalPaddingValue = GetWidthinPixels(10);
        break;
      case "PopularFood":
        TheHorizontalPaddingValue = GetWidthinPixels(10);
        break;
      case "CartPage":
        TheHorizontalPaddingValue = GetWidthinPixels(10);
        break;
      default:
        TheHorizontalPaddingValue = 0.0;
    }
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: TheHorizontalPaddingValue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // This Container for Favorite Icon..
          LeftHandContainer(
            PageID: PageID,
            ContainerChild: LeftHandContainerChild(
              PageID: PageID,
              index: index,
            ),
          ),
          // This Container For add to cart and price Getter.
          RightHandContainer(
            index: index,
            PageID: PageID,
          ),
        ],
      ),
    );
  }
}
