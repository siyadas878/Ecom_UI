import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/screens/add_product_screen/add_product_screen.dart';
import 'package:flutter/material.dart';

class DropDownContainer extends StatefulWidget {
  final String hint;
  final String title;
  const DropDownContainer({
    super.key,
    required this.hint,
    required this.title,
  });

  @override
  State<DropDownContainer> createState() => _DropDownContainerState();
}

class _DropDownContainerState extends State<DropDownContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: appFonts.f16w500Black,
        ),
        appSpaces.spaceForHeight20,
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
              hintText: widget.hint,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: appColors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: appColors.grey))),
          value: categories.first,
          items: categories
              .map((label) => DropdownMenuItem(
                    value: label,
                    child: Text(label),
                  ))
              .toList(),
          hint:const Text('Rating'),
          onChanged: (value) {
            setState(() {
              value = value;
            });
          },
        ),
      ],
    );
  }
}