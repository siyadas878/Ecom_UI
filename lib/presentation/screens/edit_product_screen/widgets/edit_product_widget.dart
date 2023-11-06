import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/screens/edit_product_screen/edit_product_screen.dart';
import 'package:clothi/presentation/widgets/dropdown_container.dart';
import 'package:clothi/presentation/widgets/text_field_container.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';

class EditProductWidget extends StatelessWidget {
  const EditProductWidget({
    super.key,
    required this.nameController,
    required this.priceController,
    required this.stocksController,
    required this.descriptionController,
    required this.tagsController,
    required this.discountsController,
  });

  final TextEditingController nameController;
  final TextEditingController priceController;
  final TextEditingController stocksController;
  final TextEditingController descriptionController;
  final TextEditingController tagsController;
  final TextEditingController discountsController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    image: DecorationImage(
                        image: AssetImage(appImages.img6),
                        fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: appColors.grey)),
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
                                    image: DecorationImage(
                                        image: AssetImage(subImages[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: appColors.grey)),
                              ),
                              const SizedBox(
                                width: 10,
                              )
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
    );
  }
}