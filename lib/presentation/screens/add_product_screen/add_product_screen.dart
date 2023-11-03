import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/back_buttonn.dart';
import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({super.key});

  final TextEditingController nameController=TextEditingController();
  final TextEditingController idController=TextEditingController();

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
          child: BackCircle(back: () {}),
        ),
        title: Text(
          'Add Product',
          style: appFonts.f16wBoldBlack,
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15,vertical: 25),
            child: Column(
                  children: [
            TextFieldContainer(
              title: 'Product name',
              hint: 'Product name',
              mycontroller: nameController,
            ),
            appSpaces.spaceForHeight20,
            TextFieldContainer(
              title: 'Product ID',
              hint: 'Product ID',
              mycontroller: nameController,
            )
                  ],
                ),
          )),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String hint;
  final String title;
  final TextEditingController mycontroller;
  const TextFieldContainer({
    super.key,
    required this.hint,
    required this.title,
    required this.mycontroller
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: appFonts.f16w500Black,),
        appSpaces.spaceForHeight20,
        TextField(
          controller: mycontroller,
          decoration: InputDecoration(
            hintText: hint,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: appColors.grey)),
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: appColors.grey))),
        )
      ],
    );
  }
}
