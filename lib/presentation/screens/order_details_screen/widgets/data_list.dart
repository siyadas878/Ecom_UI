import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:flutter/material.dart';

class DataList extends StatelessWidget {
  final String title;
  final String trailing;
  const DataList({super.key, required this.title, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: appFonts.f15w500Grey,
            ),
            const Spacer(),
            Text(
              trailing,
              style: appFonts.f15wboldblack,
            )
          ],
        ),
        appSpaces.spaceForHeight10
      ],
    );
  }
}