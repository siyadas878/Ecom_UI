import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/presentation/screens/product_category_screen/widgets/category_screen.dart';
import 'package:clothi/presentation/screens/product_category_screen/widgets/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({super.key});

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {
  int _value = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const Icon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.black,
          ),
          title: SizedBox(
            width: 100,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  labelStyle: appFonts.f15wboldblack,
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide.none)),
              value: _value,
              items:  <DropdownMenuItem<int>>[
                DropdownMenuItem(
                  value: 1,
                  child: Text('Product',style: appFonts.f16wBoldBlack,),
                ),
                DropdownMenuItem(value: 2, child: Text('Category',style: appFonts.f16wBoldBlack)),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value as int;
                });
              },
            ),
          )),
      body: _value == 1 ? const Product() : const Category(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _value == 1
              ? Get.toNamed('/AddProductScreen')
              : Get.toNamed('/AddCategoryScreen');
        },
        backgroundColor: appColors.primaryDark,
        child: const Icon(Icons.add),
      ),
    );
  }
}
