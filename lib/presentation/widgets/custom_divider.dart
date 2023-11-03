
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       SizedBox(
        height: 1,width: screenWidth(context)*0.30,
        child:const ColoredBox(color:  Color(0xFF7A7A7A),)),
        appSpaces.spaceForWidth10,
       const Text('Or with',style:TextStyle(color:Color(0xFF7A7A7A),fontSize: 14 ),),
         appSpaces.spaceForWidth10,
           SizedBox(
        height: 1,width: screenWidth(context)*0.30,
        child:const ColoredBox(color:  Color(0xFF7A7A7A),)),
      ],
    );
  }
}