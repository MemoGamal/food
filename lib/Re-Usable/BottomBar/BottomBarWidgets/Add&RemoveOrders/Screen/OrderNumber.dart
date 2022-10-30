// ignore: file_names
// ignore_for_file: non_constant_identifier_names, file_names, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/AddIcon.dart';
import '../Widgets/MinusIcon.dart';
import '../Widgets/Number.dart';

// That's Common With Cart
class OrderNumberCalc extends StatelessWidget {
  final int index;
  final String PageID; // to make differnet working logic if i'm in cart ..
  const OrderNumberCalc({super.key, required this.index, required this.PageID});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MinusIcon(PageID: PageID, index: index),

        Number(index: index, PageID: PageID),
        // if i don't want i can remove the show number Widget !
        AddIcon(PageID: PageID, index: index),
      ],
    );
  }
}
