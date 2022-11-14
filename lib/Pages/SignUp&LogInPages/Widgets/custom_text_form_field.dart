import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_code_ecomm_app/config/Injections.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  bool? phone;
  final String hintText;
  final Icon prefixIcon;
  final FocusNode? TheFocusNode;
  final bool? ObSecureText;
  CustomTextFormField({
    super.key,
    this.phone,
    required this.hintText,
    required this.prefixIcon,
    this.TheFocusNode,
    this.ObSecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              blurStyle: BlurStyle.outer,
            )
          ]),
      child: TextFormField(
        focusNode: TheFocusNode,

        onTap: () {
          TheFocusNode == null
              ? debugPrint(
                  "No Thing to fous on in TheFocusNode..CustomTextFormFieldWidget!")
              : TheFocusNode!.requestFocus();
        },

        onChanged: (value) {
          Injections.LogInPageInjection.EyesMover(value);
        },

        obscureText: ObSecureText!,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          border: InputBorder.none,
        ),
        keyboardType: phone == null ? null : TextInputType.number,
        // Restricting The input to be only numbers..
        inputFormatters: phone == null
            ? null
            : <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
      ),
    );
  }
}
