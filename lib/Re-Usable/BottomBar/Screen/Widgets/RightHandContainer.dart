import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/Re-Usable/BottomBar/Screen/Widgets/RightHandContainerChild.dart';
import 'package:get/get.dart';

import '../../../../Pages/CompletingOrderLocation/Screen/OrderLocation.dart';
import '../../../../config/Injections.dart';
import '../../../../config/app_layout.dart';
import '../../../../config/colors.dart';
import '../../BottomBarWidgets/Price&SentToCart/PriceGetter&SendToCart.dart';

class RightHandContainer extends StatelessWidget {
  final String PageID;
  final int index;
  const RightHandContainer(
      {super.key, required this.index, required this.PageID});

  @override
  Widget build(BuildContext context) {
    List _PrivateList = [];
    return InkWell(
      // Add To Cart the Items..

      onTap: PageID == "ReccomendedFood" || PageID == "PopularFood"
          ? () {
              Injections.CartInjection.addProducts(index);

              // Taking the total order number and assigning it to Cart(Each Item order number)- > Number of
              Injections.CartInjection.NumberOfOrders
                  .addAll({index: Injections.PriceInjection.Number.value});

              _PrivateList.addAll([
                Injections.NetworkInjection.Response[index].image,
                Injections.NetworkInjection.Response[index].name,
                Injections.CartInjection.NumberOfOrders[index],
              ]);

              Injections.CartInjection.MyMap
                  .putIfAbsent(index, () => _PrivateList);
              // Key..Value
              //1--2--5--1000 ok..
              print(
                  "Index number of orders is ${Injections.CartInjection.NumberOfOrders[index]}");
              print(
                  "Index number of orders is ${Injections.CartInjection.NumberOfOrders}");
            }
          : () {
              // This will be only Used in The CartPage..
              Get.to(() => const OrderLocation(PageID: "OrderLocation"));
            },
      child: Container(
        width: PageID == "CartPage"
            ? GetWidthinPixels(140)
            : GetWidthinPixels(170),
        height: GetHeightinPixels(60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(GetHeightinPixels(20)),
          color: mainColor,
        ),
        child: RightHandContainerChild(PageID: PageID),
      ),
    );
  }
}
