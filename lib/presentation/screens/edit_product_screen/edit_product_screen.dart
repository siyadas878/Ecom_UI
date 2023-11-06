import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/screens/edit_product_screen/widgets/edit_product_widget.dart';
import 'package:clothi/presentation/screens/edit_product_screen/widgets/sales_widgets.dart';
import 'package:clothi/presentation/widgets/back_buttonn.dart';
import 'package:clothi/presentation/widgets/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List<String> subImages = [
  appImages.sub1,
  appImages.sub2,
  appImages.sub3,
];

class EditProductScreen extends StatelessWidget {
  EditProductScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController stocksController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController tagsController = TextEditingController();
  final TextEditingController discountsController = TextEditingController();
  final controller = PageController(viewportFraction: 1, keepPage: false);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      EditProductWidget(
          nameController: nameController,
          priceController: priceController,
          stocksController: stocksController,
          descriptionController: descriptionController,
          tagsController: tagsController,
          discountsController: discountsController),
      const SalesWidget()
    ];
    nameController.text='White Off Shoulder Top';
    priceController.text='273.46';
    idController.text='#74328';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [IconButton.filled(onPressed: () {
          
        }, icon: Icon(CupertinoIcons.delete,color: appColors.primaryDark,))],
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: BackCircle(back: () {
            Get.back();
          }),
        ),
        title: Text(
          'White Off Shoulder Top',
          style: appFonts.f16wBoldBlack,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 2,
              axisDirection: Axis.horizontal,
              effect: SlideEffect(
                  spacing: 40.0,
                  radius: 3.0,
                  dotWidth: 70.0,
                  dotHeight: 10.0,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 0,
                  dotColor: appColors.grey,
                  activeDotColor: appColors.primaryDark),
            ),
            appSpaces.spaceForHeight20,
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: screens.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: screens[index],
                  );
                },
              ),
            ),
          ],
        ),
      )),
      bottomSheet:const AddBottomSheet(),
    );
  }
}





List<String> categories = ['Tshirt', 'Shirt', 'Shoes'];
