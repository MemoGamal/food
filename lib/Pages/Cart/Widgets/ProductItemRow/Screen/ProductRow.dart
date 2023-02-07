import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import '../../../../../config/app_layout.dart';
import '../Widgets/Desc_Container/Screen/Desc_Container.dart';
import '../Widgets/ImageContainer/ImageContainer.dart';

class ProductRow extends StatelessWidget {
  int index;
  ProductRow({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: GetHeightinPixels(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageContainer(index: index), // should be edited to take shared pref.
          Gap(GetWidthinPixels(10)),
          Desc_Container(index: index), // should be edited to take shared pref.
        ],
      ),
    );
  }
}
