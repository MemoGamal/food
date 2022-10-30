import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/Feauture/Animations/Failed_Connection_Page/Screen/Screen.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/Cart/Widgets/EmptyCart/EmptyCart.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../Re-Usable/BottomBar/Screen/BottomBar.dart';
import '../Widgets/ProductItemRow/Screen/ProductRow.dart';
import '../Widgets/TopBarIcons/Screen/RowOfIcons.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  @override
  Widget build(BuildContext context) {
    return Injections.CartInjection.MyMap.length == 0
        ? EmptyCart()
        : Scaffold(
            bottomNavigationBar: OrderBottomBar(PageID: "CartPage", index: 0),
            body: Column(
              // var AssetedImage = Injections.CartInjection.MyMap[index]!.toList();

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const RowOfIcons(),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      var bool =
                          Injections.CartInjection.MyMap.containsKey(index);

                      return bool == false
                          ? Container(
                              // Returns notings..
                              )
                          : ProductRow(index: index);
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
