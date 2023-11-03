import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

customSnackBar({required String title,required String message,int? duration}){

 
  return Get.snackbar(
    title, message,
     borderRadius: 20,
     duration:  Duration(seconds: duration ?? 3),
     titleText: Center(child: Text(title,style:appFonts.f16wBoldBlack)),
     messageText:  Center(child: Text(message,style: appFonts.f16wBoldBlack)),
     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    backgroundColor: appColors.primaryLight,
     colorText: Colors.white,
  );
}