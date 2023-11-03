import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController textEditingController=TextEditingController();
@override
  void initState() {
   _sendOtp();
    super.initState();
  }
    @override
  Widget build(BuildContext context) {
  
    final defaultPinTheme = PinTheme(
      margin:const EdgeInsets.only(right: 5),
      width: 68,
      height: 68,
      textStyle:const TextStyle(
          fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: appColors.greyLight),
        borderRadius: BorderRadius.circular(5),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: appColors.primaryDark),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color:const Color.fromARGB(255, 244, 245, 245),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  appImages.otpBanner,
                  height: 270,
                  width: 300,
                )
              ]),
              appSpaces.spaceForHeight20,
              Text(
                'OTP Verification',
                style: appFonts.f16w500Black,
              ),
              appSpaces.spaceForHeight20,
              Text(
                'Enter 4-digit  code We have sent to at',
                style: appFonts.f16w500Black,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '+91 9876543210',
                style: TextStyle(color: appColors.primaryDark, fontSize: 15),
              ),
              appSpaces.spaceForHeight25,
              Pinput(
                controller: textEditingController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                closeKeyboardWhenCompleted: true,
                keyboardType: TextInputType.number,
              ),
              appSpaces.spaceForHeight25,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t receive the code?',
                    style: appFonts.f16w500Black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Resent Code',
                    style: appFonts.f16w500Amber,
                  )
                ],
              ),
              appSpaces.spaceForHeight25,
              GestureDetector(
                onTap: () {
                  Get.toNamed('/CreatedScreen');
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
              appSpaces.spaceForHeight25,
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
            ],
          ),
        ),
      ),
    );
  }

   _sendOtp(){
  if(mounted){
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        customSnackBar(title: "OTP",
            message: 'Dear User, This is your OTP "5665". Please Do not Share it with anyone'));

    Future.delayed(const Duration(seconds: 3)).then((value) {
      if(mounted){
        setState(() {
          textEditingController.text ="5665";
        });
      }
    });

  }
  }
}