import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/CompletingOrderLocation/Screen/OrderLocation.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../Widgets/Re-UsableWidget.dart';
import '../Widgets/UserProfileAvatar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(GetHeightinPixels(20)),
        const UserAvatar(),
        const ReUsableWidget(
          CircleAvatarColor: mainColor,
          CircleAvatarIcon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          theText: "Mostafa Gamal",
        ),
        Gap(GetHeightinPixels(20)),
        const ReUsableWidget(
          CircleAvatarColor: yellowColor,
          CircleAvatarIcon: Icon(
            Icons.phone,
            color: Colors.white,
          ),
          theText: "01157512182",
        ),
        const ReUsableWidget(
          CircleAvatarColor: yellowColor,
          CircleAvatarIcon: Icon(
            Icons.email,
            color: Colors.white,
          ),
          theText: "Mostafa@gamil.com",
        ),
        InkWell(
          onTap: () => Get.to(() => const OrderLocation(PageID: "UserProfile")),
          child: const ReUsableWidget(
            CircleAvatarColor: yellowColor,
            CircleAvatarIcon: Icon(
              Icons.place,
              color: Colors.white,
            ),
            theText: "Fill in the Address",
          ),
        ),
      ],
    );
  }
}
