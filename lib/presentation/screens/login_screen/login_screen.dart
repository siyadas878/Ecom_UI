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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final GlobalKey<FormState> formKey=GlobalKey();
  late UserModel userModel;
  @override
  void initState() {
    userModel = UserModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: ListView(
          children: [
            appSpaces.spaceForHeight25,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  
                }, icon:const Icon(FontAwesomeIcons.angleLeft)),
                Text(
                  'LOGIN',
                  style: appFonts.f16wBoldBlack,
                ),
                const SizedBox(width: 30,)
              ],
            ),
            appSpaces.spaceForHeight25,
             Form(
              key:formKey ,
               child: Column(
                 children: 
               List.generate(2, (index) =>    CustomTextField(
                        index: index+2,
                            floatingTitle: appString.registerFormTitles[index + 2],
                            hint: 'Enter ${appString.registerFormTitles[index + 2]}',
                            iconUrl: appIcons.registerIcons[index + 2],
                            userModel: userModel,
                          ),
                
               ),
               ),
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: appFonts.f13amber,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(onTap: () {
              if(formKey.currentState!.validate()){
              Get.toNamed('/RoleSelect');
              }
            }, title: 'Login'),
            appSpaces.spaceForHeight30,
            const CustomDivider(),
            appSpaces.spaceForHeight30,
            appSpaces.spaceForHeight20,
            SocialPlatFormRegister(
              faceBookFunction: () {},
              googleFunction: () {},
            ),
            const SizedBox(
              height: 160,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: appFonts.f13black,
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Get.toNamed('/Register');
                    },
                    child: Text(
                      'Register',
                      style: appFonts.f13amber,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}