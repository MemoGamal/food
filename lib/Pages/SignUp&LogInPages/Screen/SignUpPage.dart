import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../config/TextWidget.dart';
import '../../../config/app_layout.dart';
import '../../HomePage/Screen/HomePage.dart';
import '../Widgets/ImageLogo.dart';
import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_text_form_field.dart';
import 'LoginPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: GetWidthinPixels(15)),
          child: Column(
            children: [
              Gap(GetHeightinPixels(20)),
              const ImageLogo(),
              Gap(GetHeightinPixels(20)),
              CustomTextFormField(
                hintText: AutofillHints.email,
                prefixIcon: const Icon(Icons.email_rounded),
                TheFocusNode: Injections.LogInPageInjection.EmailFocus,
                TheGlobalKey: Injections.LogInPageInjection.EmailKey,
                Validator: Injections.LogInPageInjection.EmailFilter,
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                // Password TextFormField
                hintText: AutofillHints.password,
                prefixIcon: const Icon(Icons.password),
                TheFocusNode: Injections.LogInPageInjection.SignUpPasswordFocus,
                ObSecureText: true,
                TheGlobalKey: Injections.LogInPageInjection.PasswordKey,
                Validator: Injections.LogInPageInjection.PasswordFilter,
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                hintText: AutofillHints.telephoneNumber,
                prefixIcon: const Icon(Icons.phone_android_sharp),
                TheFocusNode: Injections.LogInPageInjection.SignUpPhoneFocus,
                phone: true,
                TheGlobalKey: Injections.LogInPageInjection.PhoneKey,
                Validator: Injections.LogInPageInjection.PhoneFilter,
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                hintText: AutofillHints.name,
                prefixIcon: const Icon(Icons.person),
                TheFocusNode: Injections.LogInPageInjection.NameFocus,
                TheGlobalKey: Injections.LogInPageInjection.NameKey,
                Validator: Injections.LogInPageInjection.NameFilter,
              ),
              Gap(GetHeightinPixels(40)),
              CustomButtonContainer(
                containerText: "Sign Up",
                containerSize: 20,
                onTap: () {
                  Get.to(const HomePage());
                },
              ),
              Gap(GetHeightinPixels(10)),
              InkWell(
                onTap: () {
                  Get.to(() => const LoginPage());
                },
                child: const Mytext(
                  theText: 'Have an Account ? Login..',
                  textSize: 20,
                ),
              ),
              Gap(GetHeightinPixels(20)),
              const Mytext(
                theText: 'Sign Up using one of the following methods',
                textSize: 16,
              ),
              Gap(GetHeightinPixels(20)),
            ],
          ),
        ),
      ),
    );
  }
}
