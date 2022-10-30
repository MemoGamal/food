import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../config/TextWidget.dart';
import '../../../config/app_layout.dart';
import '../../HomePage/Screen/HomePage.dart';
import '../Widgets/ImageLogo.dart';
import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_text_form_field.dart';

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
                prefixIcon: Icon(Icons.email_rounded),
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                hintText: AutofillHints.password,
                prefixIcon: Icon(Icons.password),
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                hintText: AutofillHints.telephoneNumber,
                prefixIcon: Icon(Icons.phone_android_sharp),
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                hintText: AutofillHints.name,
                prefixIcon: Icon(Icons.person),
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
              const Mytext(
                theText: 'Have an Account ?',
                textSize: 20,
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
