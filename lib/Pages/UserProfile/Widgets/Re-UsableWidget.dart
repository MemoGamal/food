import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:gap/gap.dart';

class ReUsableWidget extends StatelessWidget {
  final Icon CircleAvatarIcon;
  final Color CircleAvatarColor;
  final String theText;
  const ReUsableWidget({
    super.key,
    required this.CircleAvatarColor,
    required this.CircleAvatarIcon,
    required this.theText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              radius: GetWidthinPixels(25),
              backgroundColor: CircleAvatarColor,
              child: CircleAvatarIcon,
            ),
            Gap(GetWidthinPixels(20)),
            Text(
              theText,
              style: TextStyle(
                fontSize: GetWidthinPixels(25),
                fontFamily: "Number1",
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
