import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';

class searchContainer extends StatelessWidget {
  const searchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidthinPixels(50),
      height: GetHeightinPixels(45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: mainColor,
      ),
      child: const Icon(
        Icons.search_outlined,
        color: Colors.white,
      ),
    );
  }
}
