import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final IconData suffix;
  final Icon? prefix;
  final String hint;
  const SearchBarWidget({
    super.key,
     this.prefix,
    required this.suffix,
    required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.73,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: appColors.greyLight),
        child:  Padding(
          padding:const  EdgeInsets.symmetric(horizontal:8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: appFonts.f13black,
              border:const UnderlineInputBorder(borderSide: BorderSide.none),
              suffixIcon: Icon(suffix,size: 20),
              prefixIcon:  prefix
            ),
          ),
        ),
    );
  }
}