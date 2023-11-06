import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/container_icon.dart';
import 'package:clothi/presentation/widgets/product_card.dart';
import 'package:clothi/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

List<String> productImages = [
  appImages.img1,
  appImages.img2,
  appImages.img3,
  appImages.img4,
  appImages.img5,
  appImages.img6
];

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const Icon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.black,
          ),
          title: Text(
            'Products',
            style: appFonts.f16wBoldBlack,
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              appSpaces.spaceForHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SearchBarWidget(
                    hint: 'Search',
                    prefix: Icon(CupertinoIcons.search),
                  ),
                  ContainerIcon(
                    icon: FontAwesomeIcons.sliders,
                    iconColor: Colors.white,
                    insideColor: appColors.primaryDark,
                  )
                ],
              ),
              appSpaces.spaceForHeight20,
              Expanded(
                  child: GridView.builder(
                itemCount: productImages.length,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 6.2/9,
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (context, index) {
                  return ProductCard(image: productImages[index]);
                },
              ))
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('/AddProductScreen');
          },
          backgroundColor: appColors.primaryDark,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
