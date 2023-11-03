import 'package:clothi/manager/color_manager.dart';
import 'package:flutter/material.dart';

class BackCircle extends StatelessWidget {
  final Function back;
  const BackCircle({
    super.key,
    required this.back
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        back();
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: appColors.primaryDark)
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Icon(Icons.arrow_back,color: appColors.primaryDark,),
          )),
      ),
    );
  }
}