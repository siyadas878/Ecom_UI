import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/back_buttonn.dart';
import 'package:clothi/presentation/widgets/bottom_sheet.dart';
import 'package:clothi/presentation/widgets/dropdown_container.dart';
import 'package:clothi/presentation/widgets/text_field_container.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({super.key});

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
          'Add Product',
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
                title: 'Product name',
                hint: 'Product name',
                mycontroller: nameController,
              ),
              appSpaces.spaceForHeight20,
              TextFieldContainer(
                title: 'Product ID',
                hint: 'Product ID',
                mycontroller: nameController,
              ),
              appSpaces.spaceForHeight20,
              const DropDownContainer(
                  hint: 'Product Category', title: 'Product Category'),
              appSpaces.spaceForHeight20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Gallery',
                    style: appFonts.f16w500Black,
                  ),
                  appSpaces.spaceForHeight20,
                  Container(
                    width: double.infinity,
                    height: screenHeight(context) * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: appColors.grey)),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.upload,
                              color: appColors.primaryDark,
                              size: 40,
                            ),
                            appSpaces.spaceForHeight20,
                            Text(
                              'Drop files or click here to upload',
                              style: appFonts.f13grey,
                            )
                          ]),
                    ),
                  ),
                  appSpaces.spaceForHeight20,
                  SizedBox(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          3,
                          (index) => Row(
                            children: [
                              Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: appColors.grey)),
                                  ),
                                  const SizedBox(width: 10,)
                            ],
                          )),
                    ),
                  )
                ],
              ),
              appSpaces.spaceForHeight20,
              TextFieldContainer(
                  mycontroller: priceController,
                  hint: 'Product Price',
                  title: 'Product Price'),
              appSpaces.spaceForHeight20,
              TextFieldContainer(
                  mycontroller: stocksController,
                  hint: 'Product Stocks',
                  title: 'No. of Stocks'),
              appSpaces.spaceForHeight20,
              TextFieldContainer(
                  lines: 3,
                  mycontroller: descriptionController,
                  hint: 'Product Description',
                  title: 'Product Description'),
              appSpaces.spaceForHeight20,
              TextFieldContainer(
                  mycontroller: tagsController,
                  hint: 'Product Tags',
                  title: 'Product Tags'),
              appSpaces.spaceForHeight20,
              TextFieldContainer(
                  mycontroller: discountsController,
                  hint: 'Discounts. %',
                  title: 'Discounts'),
              SizedBox(
                height: screenHeight(context) * 0.1,
              )
            ],
          ),
        ),
      )),
      bottomSheet: AddBottomSheet(),
    );
  }
}

List<String> categories = ['Tshirt', 'Shirt', 'Shoes'];
