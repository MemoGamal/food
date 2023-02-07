import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../../../../../config/app_layout.dart';
import '../Widgets/BackArrow.dart';
import '../Widgets/CartIcon.dart';
import '../Widgets/HomeIcon.dart';

class RowOfIcons extends StatelessWidget {
  const RowOfIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: GetWidthinPixels(10),
          vertical: GetHeightinPixels(10),
        ),
        child: Row(
          children: [
            const BackArrow(),
            const Spacer(),
            const HomeIcon(),
            Gap(GetWidthinPixels(40)),
            const CartIcon(),
          ],
        ),
      ),
    );
  }
}
