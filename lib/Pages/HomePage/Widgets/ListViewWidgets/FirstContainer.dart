// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';

class FirstContainer extends StatelessWidget {
  int index;
  FirstContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidthinPixels(150),
      height: GetHeightinPixels(150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(GetHeightinPixels(15)),
        image: DecorationImage(
          image: NetworkImage(Injections
              .NetworkInjection.ListOfFoodLink[index]), // Uncomment Later..
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.only(bottom: GetHeightinPixels(10)),
    );
  }
}
