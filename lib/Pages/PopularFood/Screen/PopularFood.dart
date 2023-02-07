import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Re-Usable/BottomBar/Screen/BottomBar.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import '../Widget/Bottom_AppBar.dart';
import '../Widget/Icons_Row.dart';

class PopularFood extends StatelessWidget {
  int index; // Required to load the food image..
  PopularFood({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              backgroundColor: Colors.grey,
              expandedHeight: GetHeightinPixels(300),
              actions: const [
                IconsRow(),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  Injections.NetworkInjection.ListOfFoodLink[index],
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(
                  GetHeightinPixels(40),
                ),
                child: Bottom_AppBar(index: index),
              ),
            ),
            SliverToBoxAdapter(
              child: Mytext(
                theText: Injections
                    .NetworkInjection.ListOfLongFoodDescription[index],
                dontOverFlowText: true,
                textSize: 30,
              ),
            ),
          ],
        ),
        bottomNavigationBar: OrderBottomBar(
          index: index,
          PageID: "PopularFood",
        ),
      ),
    );
  }
}
