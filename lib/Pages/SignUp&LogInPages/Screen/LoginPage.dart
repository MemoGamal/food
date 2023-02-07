import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/Pages/SignUp&LogInPages/Widgets/CreateAccount.dart';
import 'package:gap/gap.dart';
import '../../../config/TextWidget.dart';
import '../../../config/app_layout.dart';
import '../../../config/colors.dart';
import '../Widgets/RiveAnimation.dart';
import '../Widgets/SignInContainer.dart';
import '../Widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserCredential userCredential;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RiveAnimation(),
            Gap(GetHeightinPixels(10)),
            CustomTextFormField(
              hintText: "Login Email",
            ),
            Gap(GetHeightinPixels(20)),
            CustomTextFormField(
              hintText: "Password",
            ),
            Gap(GetHeightinPixels(10)),
            Row(
              //Row To but the child at mainaxisallignment.end..
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Mytext(
                  theText: "Sign into your account",
                  textSize: 20,
                  textColour: textColor, // Error Hna fel Colour
                ),
              ],
            ),
            Gap(GetHeightinPixels(50)),
            const SignInContainer(),
            Gap(GetHeightinPixels(50)),
            const CreateAccount(),
          ],
        ),
      ),
    );
  }
}
