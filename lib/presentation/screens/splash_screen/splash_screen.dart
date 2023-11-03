import 'package:clothi/manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    splasFunction();
    return  Scaffold(
      body: Center(
        child: Center(
          child: Text(
            'CLOTHI',
            style: GoogleFonts.playfair(
              color: appColors.primaryDark,
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }

  void splasFunction() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAndToNamed('/RegisterScreen');
  }
}
