import 'package:clothi/manager/color_manager.dart';
import 'package:flutter/material.dart';

class ContainerIcon extends StatelessWidget {
  final Color insideColor;
  final Color iconColor;
  final IconData icon;
  const ContainerIcon({
    super.key,
    required this.iconColor,
    required this.insideColor,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: insideColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: appColors.primaryDark)
      ),
      child: Center(
        child: Icon(icon,color: iconColor,),
      ),
    );
  }
}