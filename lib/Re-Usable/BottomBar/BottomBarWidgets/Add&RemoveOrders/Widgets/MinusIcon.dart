// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import '../../../../../config/colors.dart';

class MinusIcon extends StatelessWidget {
  final String PageID;
  final int index;
  const MinusIcon({super.key, required this.PageID, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: PageID == "CartPage"
          ? () => Injections.CartInjection.Minus(index)
          : () => Injections.PriceInjection.Minus(),
      child: const Icon(
        Icons.remove,
        color: textColor,
      ),
    );
  }
}
