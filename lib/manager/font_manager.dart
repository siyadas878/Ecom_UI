import 'package:clothi/manager/color_manager.dart';
import 'package:flutter/material.dart';

AppFonts appFonts = AppFonts();

class AppFonts {
  TextStyle f15w500Grey = const TextStyle(
      fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500);
  TextStyle f16wBoldBlack = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
  TextStyle f16w500Black = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500);
  TextStyle f16w500Amber = TextStyle(
      fontSize: 16, color: appColors.primaryDark, fontWeight: FontWeight.w500);
  TextStyle f15w500GreyLight = TextStyle(
      fontSize: 15, color: appColors.greyLight, fontWeight: FontWeight.w500);
  TextStyle f13amberlight =
      TextStyle(color: appColors.primaryLight, fontSize: 13);
  TextStyle f13amber = TextStyle(color: appColors.primaryDark, fontSize: 13);
  TextStyle f13black = const TextStyle(color: Colors.black, fontSize: 13);
  TextStyle f13bluegrey = const TextStyle(color: Colors.blueGrey, fontSize: 13);
  TextStyle f13grey = const TextStyle(color: Colors.grey, fontSize: 13);
  TextStyle f14w500black = const TextStyle(
      color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500);
  TextStyle f15black = const TextStyle(color: Colors.black, fontSize: 15);
   TextStyle f15wboldblack = const TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold);
}
