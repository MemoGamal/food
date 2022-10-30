import 'package:flutter/material.dart';

import '../../../Re-Usable/BottomBar/Screen/BottomBar.dart';
import '../Widgets/Desc_Container.dart';
import '../Widgets/ImageWidget.dart';

class RecommendedFood extends StatelessWidget {
  int index;
  RecommendedFood({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ImageWidget(index: index),
            Desc_Container(index: index),
          ],
        ),
        bottomNavigationBar: OrderBottomBar(
          index: index,
          PageID: "ReccomendedFood",
        ),
      ),
    );
  }
}
