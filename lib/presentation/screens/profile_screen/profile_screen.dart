import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/presentation/screens/profile_screen/widgets/profile_tile_widgets.dart';
import 'package:clothi/presentation/widgets/back_buttonn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: BackCircle(back: () {
            Get.toNamed('/NavBar');
          }),
        ),
        title: Text(
          'Profile',
          style: appFonts.f16wBoldBlack,
        ),
      ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(appImages.img4),
                  )),
            ),
            Center(
                child: Text(
              "Nancy Ebby",
              style: appFonts.f16w500Black,
            )),
            const SizedBox(
              height: 25,
            ),
            ProfileListTile(
              onTap: () {},
              title: "Your Profile",
              icon: Icons.person_2_outlined,
            ),
            ProfileListTile(
              onTap: () {},
              title: "Payment Methods",
              icon: Icons.wallet_outlined,
            ),
            ProfileListTile(
              onTap: () {
                Get.toNamed("/myOrdersScreen");
              },
              title: "My Orders",
              icon: CupertinoIcons.doc_text,
            ),
            ProfileListTile(
              onTap: () {},
              title: "Settings",
              icon: Icons.settings,
            ),
            ProfileListTile(
              onTap: () {},
              title: "Help Centre",
              icon: Icons.help_outline_outlined,
            ),
            ProfileListTile(
              onTap: () {},
              title: "Privacy Policy",
              icon: Icons.lock_outline,
            ),
            ProfileListTile(
              onTap: () {},
              title: "Invite Friends",
              icon: Icons.person_add_alt,
            ),
            ProfileListTile(
              onTap: () {
                Get.toNamed("/");
              },
              title: "Logout",
              icon: Icons.logout_outlined,
            ),
          ],
        ));
  }
}
