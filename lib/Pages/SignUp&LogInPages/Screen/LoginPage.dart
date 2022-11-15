import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../config/TextWidget.dart';
import '../../../config/app_layout.dart';
import '../../../config/colors.dart';
import '../Widgets/RiveAnimation.dart';
import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_text_form_field.dart';
import 'SignUpPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RiveAnimation(),
              Gap(GetHeightinPixels(10)),
              CustomTextFormField(
                hintText: "Phone",
                prefixIcon: const Icon(Icons.phone_android_outlined),
                phone: true,
                focusNode: Injections.LogInPageInjection.LoginPhoneFocus,
                globalKey: Injections.LogInPageInjection.PhoneKey,
                validator: Injections.LogInPageInjection.PhoneFilter,
              ),
              Gap(GetHeightinPixels(10)),
              CustomTextFormField(
                hintText: "Password",
                prefixIcon: const Icon(Icons.password),
                focusNode: Injections.LogInPageInjection.PasswordFocus,
                obSecureText: true,
                globalKey: Injections.LogInPageInjection.PasswordKey,
                validator: Injections.LogInPageInjection.PasswordFilter,
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
              CustomButtonContainer(
                  containerText: "Sign in",
                  containerSize: 20,
                  onTap: () {
                    Injections.LogInPageInjection.ValidateAndSave();
                    // Get.to(() => const FetchingContent());
                  }),
              Gap(GetHeightinPixels(50)),
              Row(
                // To put different colors of texts in a row..
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Mytext(
                    theText: "Don't have an account?",
                    textColour: textColor,
                    textSize: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const SignUpPage());
                    },
                    child: const Mytext(
                      theText: "Create",
                      textSize: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
