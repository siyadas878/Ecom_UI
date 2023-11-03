import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatedScreen extends StatelessWidget {
  const CreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(appImages.likeBanner,height:140,)
          ],),
          appSpaces.spaceForHeight30,
           Text(
                  'Account Created',
                  style: appFonts.f16w500Black,
                ),
            appSpaces.spaceForHeight20,
              Text(
                  'Your account has been created successfully.\nPress Continue to start using app.',
                textAlign: TextAlign.center,  style: appFonts.f14w500black,
                ),
                const SizedBox(height: 100,),
                  GestureDetector(
                  onTap: () {
                  Get.offNamedUntil('/LoginScreen', (route) => false);   
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: appColors.primaryDark,
                    child:const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
                 RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                          'By continue You agree that You have read and accepted our ',
                      style:const TextStyle(color: Colors.black, fontSize: 13),
                      children: [
                        TextSpan(
                            text: 'Terms & Condition ',
                            style: TextStyle(color: appColors.primaryDark,fontSize: 13,decoration: TextDecoration.underline)),
                       const TextSpan(
                            text: 'and ',
                            style: TextStyle(color: Colors.black, fontSize: 13)),
                        TextSpan(
                            text: 'Privacy Policy',
                            style:TextStyle(color: appColors.primaryDark,fontSize: 13,decoration: TextDecoration.underline)),
                      ]),
                )
        ],),
      ),
    ),);
  }
}