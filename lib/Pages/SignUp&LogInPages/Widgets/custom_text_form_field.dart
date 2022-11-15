import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  bool? phone;
  final String hintText;
  final Icon prefixIcon;
  final FocusNode focusNode;
  final GlobalKey<FormState> globalKey;
  final String validator;

  bool obSecureText;
  CustomTextFormField({
    super.key,
    this.phone,
    required this.hintText,
    required this.prefixIcon,
    required this.globalKey,
    required this.validator,
    required this.focusNode,
    this.obSecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    void validation() {
      Injections.LogInPageInjection.form = globalKey.currentState!;
      if (Injections.LogInPageInjection.form.validate()) {
        // debugPrint("Well Validation is working these days..");
      } else {
        print("Somethingis wrong!");
      }
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
            autofocus: true,
            focusNode: focusNode,
            onTap: () {
              focusNode.requestFocus();
              Injections.LogInPageInjection.UnFocus == false
                  ? null
                  : focusNode.unfocus();
            },

            onChanged: (value) {
              Injections.LogInPageInjection.EyesMover(value);
              validation();
            },
            onSaved: (newValue) {},
            validator: (value) {
              if (value!.isEmpty || !RegExp(validator).hasMatch(value)) {
                return "Please Enter Valid Information";
              }
            },
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              hintText: hintText,
              border: InputBorder.none,
              // errorBorder: ,
              errorStyle: TextStyle(
                // height: 1.5,
                // inherit: true,
                fontSize: GetWidthinPixels(16),
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            keyboardType: phone == null ? null : TextInputType.number,
            // Restricting The input to be only numbers..
            inputFormatters: phone == null
                ? null
                : <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
          ),
        ),
      ],
    );
  }
}
