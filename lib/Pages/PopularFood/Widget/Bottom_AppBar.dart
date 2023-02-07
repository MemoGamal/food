import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';

import '../../../config/TextWidget.dart';
import '../../../config/app_layout.dart';

class Bottom_AppBar extends StatelessWidget {
  int index;
  Bottom_AppBar({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: GetHeightinPixels(15)),
      child: Center(
        child: Mytext(
          theText: Injections.NetworkInjection.ListOfFoodName[index],
        ),
      ),
    );
  }
}
