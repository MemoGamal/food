import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';
import '../../../../../config/colors.dart';
import '../../BottomBarWidgets/Add&RemoveOrders/Screen/OrderNumber.dart';

class LeftHandContainerChild extends StatelessWidget {
  int index;
  String PageID;
  LeftHandContainerChild({
    super.key,
    required this.index,
    required this.PageID,
  });

  @override
  Widget build(BuildContext context) {
    var ContainerChild;
    switch (PageID) {
      case "ReccomendedFood":
        return ContainerChild = Expanded(
          child: OrderNumberCalc(index: index, PageID: PageID),
        );
      case "PopularFood":
        return ContainerChild = const Icon(
          Icons.favorite,
          color: mainBlackColor,
        );
      case "CartPage":
        return Obx(
          () {
            Injections.CartInjection.TotalPriceFun(index);
            return ContainerChild = Center(
              child: Text(
                Injections.CartInjection.TotalPriceGetter.toString(),
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        );
    }
    return Container(
      height: 300,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          GetHeightinPixels(20),
        ),
      ),
      child: ContainerChild,
      // child: ReccommendedPage == true
      //     ? Expanded(
      //         child: OrderNumberCalc(
      //         CartNumber: CartNumber,
      //         index: index,
      //       ))
      //     : const Icon(
      //         Icons.favorite,
      //         color: mainBlackColor,
      //       ),
    );
  }
}
