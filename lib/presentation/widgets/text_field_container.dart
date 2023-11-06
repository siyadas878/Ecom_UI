import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final String hint;
  final String title;
  final TextEditingController mycontroller;
  final int? lines;
  const TextFieldContainer(
      {super.key,
      required this.hint,
      required this.title,
       this.lines,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: appFonts.f16w500Black,
        ),
        appSpaces.spaceForHeight20,
        TextField(
          maxLines: lines ?? 1,
          controller: mycontroller,
          decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: appColors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: appColors.grey))),
        )
      ],
    );
  }
}