import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/Cart/Widgets/EmptyCart/EmptyCart.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';

import '../../../Re-Usable/BottomBar/Screen/BottomBar.dart';
import '../Widgets/ProductItemRow/Screen/ProductRow.dart';
import '../Widgets/TopBarIcons/Screen/RowOfIcons.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  final List _ItemsInCart = [];
  // List Only to Catch The index of each element in the cart .. 1,,15,,20,,150..
  @override
  Widget build(BuildContext context) {
    Injections.CartInjection.MyMap.forEach(
      (key, value) {
        return _ItemsInCart.add(key);
        //index (0,10,2,5)=>Key(0,10,2,5)..
      },
    );
    return Injections.CartInjection.MyMap.length == 0
        ? const EmptyCart()
        : Scaffold(
            bottomNavigationBar:
                const OrderBottomBar(PageID: "CartPage", index: 0),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RowOfIcons(),
                Expanded(
                  child: ListView.builder(
                    itemCount: Injections.CartInjection.MyMap.length,
                    itemBuilder: (context, index) {
                      return ProductRow(index: _ItemsInCart[index]);
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
