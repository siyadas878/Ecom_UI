import 'package:clothi/manager/color_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final String title;
  final Color? color;
  const CustomButton(
      {super.key, required this.onTap, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    const double radius = 30;

    return Center(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: appColors.primaryDark),
            color: color == null ? appColors.primaryDark : Colors.white,
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(radius), right: Radius.circular(radius)),
          ),
          child: SizedBox(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: color == null
                          ? Colors.white
                          : appColors.primaryDark)),
            ),
          ),
        ),
      ),
    );
  }
}