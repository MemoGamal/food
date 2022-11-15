import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  bool? phone;
  final String hintText;
  final Icon prefixIcon;
  final FocusNode TheFocusNode;
  final bool? ObSecureText;
  final GlobalKey<FormState> TheGlobalKey;
  final String Validator;
  CustomTextFormField({
    super.key,
    this.phone,
    required this.hintText,
    required this.prefixIcon,
    required this.TheGlobalKey,
    required this.Validator,
    required this.TheFocusNode,
    this.ObSecureText = false,
  });
  late FormState form;

  @override
  Widget build(BuildContext context) {
    void Validation() {
      form = TheGlobalKey.currentState!;

      if (form.validate()) {
        // debugPrint("Well Validation is working these days..");
      } else {
        print("Somethingis wrong!");
      }
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Form(
        key: TheGlobalKey,
        child: TextFormField(
          autofocus: true,

          focusNode: TheFocusNode,
          onTap: () {
            TheFocusNode.requestFocus();
          },

          onChanged: (value) {
            Injections.LogInPageInjection.EyesMover(value);
            Validation();
          },
          onSaved: (newValue) {
            print("TheFocusNode.nextFocus();${TheFocusNode.nextFocus()}");
          },
          validator: (value) {
            if (value!.isEmpty || !RegExp(Validator).hasMatch(value)) {
              return "Please Enter Valid Information";
            } else {
              return null;
            }
          },

          obscureText: ObSecureText!,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            border: InputBorder.none,
            // errorBorder: ,
            errorStyle: TextStyle(
              fontFamily: "Number1",
              fontSize: GetWidthinPixels(16),
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            errorBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(GetWidthinPixels(25)),
              borderSide: BorderSide(
                
                color: Colors.red,
                width: GetWidthinPixels(3),
              ),
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
    );
  }
}
