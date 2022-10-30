// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_clean_code_ecomm_app/config/app_layout.dart';
import 'package:flutter_clean_code_ecomm_app/config/colors.dart';

class ExpandableText extends StatefulWidget {
  final String Text;
  final int? Height;
  const ExpandableText({Key? key, required this.Text, this.Height})
      : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String Firsthalf;
  late String Secondhalf;
  bool Hiddentext = true;
  @override
  @override
  void initState() {
    double TextHeight = widget.Height == null
        ? GetHeightinPixels(150)
        : GetHeightinPixels(widget.Height!);

    super.initState();
    if (widget.Text.length > TextHeight) {
      Firsthalf = widget.Text.substring(0, TextHeight.toInt());
      Secondhalf =
          widget.Text.substring(TextHeight.toInt() + 1, widget.Text.length);
    } else {
      Firsthalf = widget.Text;
      Secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Secondhalf.isEmpty
          ? Text(Firsthalf)
          : Column(
              children: [
                Hiddentext
                    ? Text(
                        "$Firsthalf...",
                        style: TextStyle(fontSize: GetWidthinPixels(15)),
                      )
                    : Text(
                        widget.Text,
                        style: TextStyle(fontSize: GetWidthinPixels(15)),
                      ),
                InkWell(
                  onTap: () => setState(() {
                    Hiddentext =
                        !Hiddentext; // if it's true it will make it false.. if it's false it will become true.
                  }),
                  child: Row(
                    children: [
                      Text(
                        Hiddentext ? "Show More" : "Show less",
                        style: TextStyle(
                          fontSize: GetWidthinPixels(15),
                          color: mainColor,
                        ),
                      ),
                      Hiddentext
                          ? const Icon(Icons.arrow_drop_down)
                          : const Icon(Icons.arrow_drop_up),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
