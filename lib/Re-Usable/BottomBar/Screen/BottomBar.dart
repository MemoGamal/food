import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import '../../../config/app_layout.dart';
import 'Widgets/BottomBarRow.dart';
import 'Widgets/BigContainer.dart';

class OrderBottomBar extends StatelessWidget {
  final String PageID;
  final int index;
  const OrderBottomBar({
    super.key,
    required this.index,
    required this.PageID,
  });

  @override
  Widget build(BuildContext context) {
    return BigContainer(
      ContainerChild: RowOfContainers(
        PageID: PageID,
        index: index,
      ),
    );
  }
}
