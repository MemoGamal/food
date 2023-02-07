import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:gap/gap.dart';

import '../../../Feauture/GoogleMaps/Screens/GoogleMaps.dart';
import '../Widgets/AppBarWidget.dart';
import '../Widgets/Re-UsableWidget.dart';
import '../Widgets/SaveDataButton.dart';

class OrderLocation extends StatelessWidget {
  final String PageID;
  const OrderLocation({super.key, required this.PageID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const TheAppBar(Title: "Please Add Address"),
          const GoogleMaps(),
          Gap(GetHeightinPixels(20)),
          const ReUsableWidget(
            TextFormFieldName: "Delivery Address",
            TextFormFieldIcon: Icons.email_rounded,
            HintText: "Delivery Address",
          ),
          Gap(GetHeightinPixels(10)),
          const ReUsableWidget(
            TextFormFieldName: "Contact Person Name",
            TextFormFieldIcon: Icons.person,
            HintText: "Contact Person Name",
          ),
          Gap(GetHeightinPixels(10)),
          const ReUsableWidget(
            TextFormFieldName: "Contact Person Number",
            TextFormFieldIcon: Icons.phone_in_talk_sharp,
            HintText: "Please Enter Your Phone Number",
            Phone: true,
          ),
          const Spacer(),
          const SaveData(),
        ],
      ),
    );
  }
}
