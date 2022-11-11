
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';

import 'AnimationEnum.dart';

class AnimationLogin extends StatefulWidget {
  const AnimationLogin({super.key});

  @override
  State<AnimationLogin> createState() => _AnimationLoginState();
}
   Artboard? RiveArtBoard;
  late RiveAnimationController controllerIdle;
  late RiveAnimationController controllerHands_up;
  late RiveAnimationController controllerHands_Down;
  late RiveAnimationController controllersuccess;
  late RiveAnimationController controllerFail;
  late RiveAnimationController controllerLook_down_right;
  late RiveAnimationController controllerLook_down_left;
  late RiveAnimationController controllerlook_idle;

class _AnimationLoginState extends State<AnimationLogin> {
  @override
  void initState() {
    print("Init State");
    // TODO: implement initState
    super.initState();
     controllerIdle=SimpleAnimation(AnimationEnum.idle.name);
     controllerHands_up=SimpleAnimation(AnimationEnum.Hands_up.name);
     controllerHands_Down=SimpleAnimation(AnimationEnum.hands_down.name);
     controllersuccess=SimpleAnimation(AnimationEnum.success.name);
     controllerFail=SimpleAnimation(AnimationEnum.fail.name);
     controllerLook_down_right=SimpleAnimation(AnimationEnum.Look_down_right.name);
     controllerLook_down_left=SimpleAnimation(AnimationEnum.Look_down_left.name);
     controllerlook_idle=SimpleAnimation(AnimationEnum.look_idle.name);
     print("RootBundle");
      rootBundle.load('Assets/Animations/AnimationLogin.riv'). then((value) {
      final File=RiveFile.import(value);
      final artboart=File.mainArtboard; // R
      artboart.addController(controllerIdle);
      print("Here");
      setState(() {
        RiveArtBoard=artboart;
      });
    });
print("Rootbundle over");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Rive(artboard: RiveArtBoard!),
    );
  }
}