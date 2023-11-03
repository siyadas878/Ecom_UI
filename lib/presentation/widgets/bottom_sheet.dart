import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/presentation/widgets/custom_button.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      elevation: 10,
      backgroundColor: Colors.white,
      onClosing: () {},
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: screenHeight(context) * 0.13,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: appColors.primaryDark),
                borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        color: appColors.primaryDark,
                        onTap: () {}, title: 'Cancel'),
                       CustomButton(onTap: () {}, title: 'Save')
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
