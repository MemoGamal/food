import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';

import '../../../../../../config/Injections.dart';
import '../../../../../../config/app_layout.dart';

class ImageContainer extends StatelessWidget {
  int index;
  ImageContainer({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var CartImage = Injections.CartInjection.MyMap[index]!.toList();

    return Padding(
      padding: EdgeInsets.only(left: GetWidthinPixels(10)),
      child: Container(
        height: GetHeightinPixels(130),
        width: GetWidthinPixels(140),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(GetHeightinPixels(20)),
          image: DecorationImage(
            image: NetworkImage("${CartImage[0]}"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
