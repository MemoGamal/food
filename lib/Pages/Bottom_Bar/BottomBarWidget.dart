import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../config/Injections.dart';
import '../../config/app_layout.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
        tabBackgroundColor:
            Colors.pink.withOpacity(0.5), // selected tab background color
        gap: GetWidthinPixels(15),
        padding: EdgeInsets.all(GetHeightinPixels(14)),
        selectedIndex: Injections.BottomBarInjection.ScreenPage.value,
        onTabChange: (index) {
          Injections.BottomBarInjection.ChangeScreen(index);
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.favorite_border,
            text: "Favorite",
          ),
          GButton(
            icon: Icons.shopping_cart_outlined,
            text: "Cart",
          ),
          GButton(
            icon: Icons.person,
            text: "User Profile",
          ),
        ]);
  }
}
