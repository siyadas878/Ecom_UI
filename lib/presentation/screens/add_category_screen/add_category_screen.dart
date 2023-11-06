import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/presentation/widgets/back_buttonn.dart';
import 'package:clothi/presentation/widgets/bottom_sheet.dart';
import 'package:clothi/presentation/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCategoryScreen extends StatelessWidget {
  AddCategoryScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController stocksController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();
  final TextEditingController discountsController = TextEditingController();

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
            Get.back();
          }),
        ),
        title: Text(
          'Add Category',
          style: appFonts.f16wBoldBlack,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFieldContainer(
                title: 'Category name',
                hint: 'Category name',
                mycontroller: nameController,
              ),
             
            ],
          ),
        ),
      )),
      bottomSheet:const AddBottomSheet(),
    );
  }
}

