import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:flutter/material.dart';


class ProfileListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  const ProfileListTile({super.key, required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();

    return Column(
      children: [
        ListTile(
          dense: true,
          onTap: (){
            onTap();
          },
          leading: Icon(icon,color: appColors.primaryDark,),
          title: Text(title,
          style:appFonts.f16w500Black,),
          trailing: Icon(Icons.arrow_forward_ios_rounded,
            color: appColors.primaryDark,),
        ),
        const Divider()
      ],
    );
  }
}