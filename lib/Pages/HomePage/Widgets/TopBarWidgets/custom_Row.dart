import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';

import 'searchContainer.dart';

class customRow extends StatelessWidget {
  const customRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Mytext(
                  theText: "Egypt",
                  textColour: mainColor,
                  textSize: 35,
                ),
                Row(
                  children: const [
                    Mytext(
                      theText: "6th of october city",
                      textColour: textColor,
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                )
              ],
            ),
            const searchContainer(),
          ],
        ),
      ],
    );
  }
}
