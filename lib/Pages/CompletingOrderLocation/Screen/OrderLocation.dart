import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/config/TextWidget.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../SignUp&LogInPages/Widgets/custom_text_form_field.dart';
import '../Widgets/AppBarWidget.dart';
import '../Widgets/Re-UsableWidget.dart';
import '../Widgets/SaveDataButton.dart';

class OrderLocation extends StatelessWidget {
  final String PageID;
  const OrderLocation({super.key, required this.PageID});

  @override
  final CameraPosition _MyHomeLocation = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TheAppBar(Title: "Please Add Address"),
          SizedBox(
            width: GetWidth(),
            height: GetHeightinPixels(200),
            child: GoogleMap(
              initialCameraPosition: _MyHomeLocation,
              mapType: MapType.hybrid,
            ),
          ),
          const ReUsableWidget(
            TextFormFieldName: "Delivery Address",
            TextFormFieldIcon: Icons.email_rounded,
            HintText: "Delivery Address",
          ),
          const ReUsableWidget(
            TextFormFieldName: "Contact Person Name",
            TextFormFieldIcon: Icons.person,
            HintText: "Contact Person Name",
          ),
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
