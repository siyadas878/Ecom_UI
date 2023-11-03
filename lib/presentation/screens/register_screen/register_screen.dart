import 'package:clothi/core/models/user_models.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/icon_manger.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/manager/string_manger.dart';
import 'package:clothi/presentation/widgets/custom_button.dart';
import 'package:clothi/presentation/widgets/custom_divider.dart';
import 'package:clothi/presentation/widgets/custom_text_field.dart';
import 'package:clothi/presentation/widgets/social_platform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late UserModel userModel;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  void initState() {
    userModel = UserModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: ListView(
          children: [
            appSpaces.spaceForHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'REGISTER',
                  style: appFonts.f16wBoldBlack,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: formKey,
              child: Column(
                children: List.generate(
                  4,
                  (index) => CustomTextField(
                    index: index,
                    floatingTitle: appString.registerFormTitles[index],
                    hint: 'Enter ${appString.registerFormTitles[index]}',
                    iconUrl: appIcons.registerIcons[index],
                    userModel: userModel,
                    isPassword: index == 3,
                  ),
                ),
              ),
            ),
            appSpaces.spaceForHeight20,
            CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Get.toNamed('/OtpScreen');
                  }
                },
                title: 'Register'),
            appSpaces.spaceForHeight20,
            const CustomDivider(),
            appSpaces.spaceForHeight20,
            SocialPlatFormRegister(
              faceBookFunction: () {},
              googleFunction: () {},
            ),
            appSpaces.spaceForHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: appFonts.f13black,
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Get.toNamed('/SignIn');
                    },
                    child: Text(
                      'Login',
                      style: appFonts.f13amberlight,
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
