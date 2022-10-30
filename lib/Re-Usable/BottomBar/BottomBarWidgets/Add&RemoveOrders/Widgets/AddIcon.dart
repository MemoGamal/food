// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';

import '../../../../../config/colors.dart';

class AddIcon extends StatelessWidget {
  final int index;
  final String PageID;
  const AddIcon({super.key, required this.PageID, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: PageID == "CartPage"
          ? () => Injections.CartInjection.Add(index)
          : () => Injections.PriceInjection.Add(),
      child: const Icon(
        Icons.add,
        color: textColor,
      ),
    );
  }
}
