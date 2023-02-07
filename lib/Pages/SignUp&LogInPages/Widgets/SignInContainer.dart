import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/HomePage/Screen/HomePage.dart';
import 'package:get/get.dart';

import '../../../Feauture/Animations/SplashScreen/Screen/SplashScreen.dart';
import '../../../config/Injections.dart';
import 'custom_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInContainer extends StatelessWidget {
  const SignInContainer({super.key});

  @override
  Widget build(BuildContext context) {
    UserCredential userCredential;

    return CustomButtonContainer(
      containerText: "Sign in",
      containerSize: 24,
      onTap: () async {
        Injections.LogInPageInjection.PasswordFocus.unfocus();

        try {
          userCredential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: Injections.LogInPageInjection.TypedLoginEmailData == null
                ? "Null@gmail.com"
                : Injections.LogInPageInjection.TypedLoginEmailData,
            password:
                Injections.LogInPageInjection.TypedLoginPasswordData == null
                    ? "Null@gmail.com"
                    : Injections.LogInPageInjection.TypedLoginPasswordData,
          );
          print(userCredential);
          Get.to(() => FetchingContent());
        } on FirebaseAuthException catch (e) {
          if (e.code == "user-not-found") {
            Get.snackbar("User Not Found", "Please Check Your Email Address");
          } else if (e.code == "wrong-password") {
            Get.snackbar(
                "Wrong Password provided", "Please Check Your Password");
          } else if (e.code == "invalid-email") {
            Get.snackbar("Invalid Email", "Please Check Your Email");
          } else
            print(e.code);
        }
        // if (Injections.LogInPageInjection.LogInID == true &&
        //     Injections.LogInPageInjection.LogInPassword) {
        //   Injections.LogInPageInjection.AddSuccess();
        //   // Error 8Alban hyt7l in FireBase..
        //   Get.to(() => FetchingContent());
        // } else {
        //   Injections.LogInPageInjection.Addfail();
        // }
      },
    );
  }
}
