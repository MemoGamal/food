import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  bool? phone;
  final String hintText;
  final Icon prefixIcon;

  CustomTextFormField({
    super.key,
    this.phone,
    required this.hintText,
    required this.prefixIcon,
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
