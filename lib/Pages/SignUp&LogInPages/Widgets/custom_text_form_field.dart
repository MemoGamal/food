import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';

class CustomTextFormField extends StatelessWidget {
  bool? phone;
  final String hintText;

  bool obSecureText;
  CustomTextFormField({
    super.key,
    this.phone,
    required this.hintText,
    this.obSecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    Icon prefixIcon = const Icon(Icons.wrong_location);
    String WhatIsWrongValidator = "";
    GlobalKey<FormState> globalKey = GlobalKey();
    TextEditingController textEditingController = TextEditingController();
    FocusNode focusNode = FocusNode();
    var UserTypedData;

    String validator = "";
    void IDChecker() {
      if (focusNode == Injections.LogInPageInjection.LoginPhoneFocus &&
          globalKey.currentState!.validate()) {
        debugPrint("Phone is Right!");
        Injections.LogInPageInjection.LogInID = true;
      } else if (focusNode != Injections.LogInPageInjection.LoginPhoneFocus) {
        debugPrint("Phone Is not Selected");
      } else {
        debugPrint("Phone is Wrong");
        Injections.LogInPageInjection.LogInID = false;
      }
    }

    void PasswordChecker() {
      if (focusNode == Injections.LogInPageInjection.PasswordFocus &&
          globalKey.currentState!.validate()) {
        debugPrint("Password is Right");
        Injections.LogInPageInjection.LogInPassword = true;
      } else if (focusNode != Injections.LogInPageInjection.PasswordFocus) {
        debugPrint("Password Is not Selected");
      } else {
        debugPrint("Password is Wrong");
        Injections.LogInPageInjection.LogInPassword = false;
      }
    }

    switch (hintText) {
      case AutofillHints.email:
        prefixIcon = const Icon(Icons.email_rounded);
        focusNode = Injections.LogInPageInjection.EmailFocus;

        break;
      case AutofillHints.password:
        prefixIcon = const Icon(Icons.password);
        focusNode = Injections.LogInPageInjection.SignUpPasswordFocus;
        // obSecureText: true,
        break;
      case AutofillHints.telephoneNumber:
        prefixIcon = const Icon(Icons.phone_android_sharp);
        focusNode = Injections.LogInPageInjection.SignUpPhoneFocus;
        //phone: true,
        break;
      case AutofillHints.name:
        prefixIcon = const Icon(Icons.person);
        focusNode = Injections.LogInPageInjection.NameFocus;
        break;
      // LoginPage..
      case "Login Email":
        prefixIcon = const Icon(Icons.email_rounded);
        focusNode = Injections.LogInPageInjection.LoginEmailFocus;
        break;
      case "Password":
        prefixIcon = const Icon(Icons.password);
        focusNode = Injections.LogInPageInjection.PasswordFocus;
        // obSecureText: true,
        break;
      default:
    }

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
        ),
        Form(
          key: globalKey,
          child: TextFormField(
            controller: textEditingController,
            autofocus: true,
            // focusNode: focusNode,
            focusNode: focusNode,
            onTap: () {
              focusNode.requestFocus();
              //Important for the animation..
            },

            onChanged: (value) {
              Injections.LogInPageInjection.EyesMover(value);
              UserTypedData = textEditingController.text;
              if (focusNode == Injections.LogInPageInjection.EmailFocus) {
                Injections.LogInPageInjection.TypedEmailData = UserTypedData;
              }
              if (focusNode ==
                  Injections.LogInPageInjection.SignUpPasswordFocus) {
                Injections.LogInPageInjection.TypedPasswordData = UserTypedData;
              }
              // Login Page
              if (focusNode == Injections.LogInPageInjection.LoginEmailFocus) {
                Injections.LogInPageInjection.TypedLoginEmailData =
                    UserTypedData;
              }
              if (focusNode == Injections.LogInPageInjection.PasswordFocus) {
                Injections.LogInPageInjection.TypedLoginPasswordData =
                    UserTypedData;
              }
            },

            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              hintText: hintText,
              border: InputBorder.none,
              // errorBorder: ,
              errorStyle: TextStyle(
                fontSize: GetWidthinPixels(16),
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            keyboardType: phone == null ? null : TextInputType.number,
            // Restricting The input to be only numbers..
            inputFormatters: phone == true
                ? <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ]
                : null,
          ),
        ),
      ],
    );
  }
}
