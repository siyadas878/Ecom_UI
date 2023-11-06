
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:flutter/material.dart';

class OrderColumnWidgets extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color color;
  const OrderColumnWidgets({
    required this.icon,
    required this.subTitle,
    required this.title,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: color,),
        appSpaces.spaceForHeight10,
        Text(title,style: appFonts.f15wboldblack,),
        appSpaces.spaceForHeight10,
        Text(subTitle,style: appFonts.f15w500Grey,)
      ],
    );
  }
}