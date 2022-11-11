import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircleAvatar(
      backgroundColor: mainColor,
      radius: 75,
      backgroundImage: AssetImage("Assets/Images/womanAvatar.jpg"),
    ));
  }
}
