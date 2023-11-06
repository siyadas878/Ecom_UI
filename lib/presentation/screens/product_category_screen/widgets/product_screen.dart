import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/container_icon.dart';
import 'package:clothi/presentation/widgets/product_card.dart';
import 'package:clothi/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    ));
  }
}


List<String> productImages = [
  appImages.img1,
  appImages.img2,
  appImages.img3,
  appImages.img4,
  appImages.img5,
  appImages.img6
];