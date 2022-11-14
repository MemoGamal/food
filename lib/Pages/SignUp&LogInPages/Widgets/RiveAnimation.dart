import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/SignUp&LogInPages/Widgets/Enum.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:rive/rive.dart';

import '../../../config/Injections.dart';

class RiveAnimation extends StatefulWidget {
  const RiveAnimation({super.key});

  @override
  State<RiveAnimation> createState() => _RiveAnimationState();
}

class _RiveAnimationState extends State<RiveAnimation> {
  // void PhoneNodeDetector() {
  //   Injections.LogInPageInjection.PhoneFocus.addListener(() {
  //     if (Injections.LogInPageInjection.IsPhoneInFocus) {
  //       print("Phone Is Focused");

  //       AddLookLeft();
  //     } else {
  //       AddIdle();
  //       print("Phone is unfocused");
  //     }
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    rootBundle.load('Assets/Animations/AnimationLogin.riv').then((data) {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      artboard.addController(Injections.LogInPageInjection.controllerIdle);

      setState(() {
        Injections.LogInPageInjection.riveArtboard = artboard;
      });
    });
    Injections.LogInPageInjection.PasswordNodeDetector();
    // PhoneNodeDetector();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: GetWidth(),
      height: GetHeightinPixels(250),
      child: Injections.LogInPageInjection.riveArtboard == null
          ? const SizedBox()
          : Rive(artboard: Injections.LogInPageInjection.riveArtboard!),
    );
  }
}
