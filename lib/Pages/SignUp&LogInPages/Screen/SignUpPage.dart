import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../config/TextWidget.dart';
import '../../../config/app_layout.dart';
import '../Widgets/ImageLogo.dart';
import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_text_form_field.dart';
import 'LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserCredential userCredential;
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
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                // Password TextFormField
                hintText: AutofillHints.password,
              ),
              Gap(GetHeightinPixels(15)),
              // Phone Number TextFormField
              CustomTextFormField(
                phone: true,
                hintText: AutofillHints.telephoneNumber,
              ),
              Gap(GetHeightinPixels(15)),
              CustomTextFormField(
                hintText: AutofillHints.name,
              ),
              Gap(GetHeightinPixels(40)),
              CustomButtonContainer(
                containerText: "Sign Up",
                containerSize: 20,
                onTap: () async {
                  try {
                    userCredential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: Injections.LogInPageInjection.TypedEmailData,
                      password: Injections.LogInPageInjection.TypedPasswordData,
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == "weak-password") {
                      Get.snackbar(
                          "Weak Password", "Please type stronger Password");
                    } else if (e.code == "email-already-in-use") {
                      Get.snackbar("Email Already in use",
                          "Please use Different e-mail");
                    }
                  }
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
