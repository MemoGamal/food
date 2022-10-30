import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:gap/gap.dart';
import '../../../config/TextWidget.dart';
import '../../../config/colors.dart';
import '../../SignUp&LogInPages/Widgets/custom_text_form_field.dart';

class ReUsableWidget extends StatelessWidget {
  final String TextFormFieldName;
  final String HintText;
  final IconData TextFormFieldIcon;
  final bool? Phone;
  const ReUsableWidget({
    super.key,
    required this.TextFormFieldName,
    required this.TextFormFieldIcon,
    required this.HintText,
    this.Phone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextFormFieldName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: GetWidthinPixels(25),
            fontFamily: "Number1",
          ),
        ),
        CustomTextFormField(
          phone: Phone,
          hintText: HintText,
          prefixIcon: Icon(
            TextFormFieldIcon,
            color: iconColor1,
          ),
        ),
        Gap(GetHeightinPixels(10)),
      ],
    );
  }
}
