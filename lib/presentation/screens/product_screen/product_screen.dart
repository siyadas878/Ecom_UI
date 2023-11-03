import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/container_icon.dart';
import 'package:clothi/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

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
                    hint: '16 to 22 Jun,2023',
                    suffix: FontAwesomeIcons.calendar,
                  ),
                  ContainerIcon(
                    icon: FontAwesomeIcons.sliders,
                    iconColor: Colors.white,
                    insideColor: appColors.primaryDark,
                  )
                ],
              )
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.toNamed('/AddProductScreen');
        },
        backgroundColor: appColors.primaryDark,
        child:const Icon(Icons.add),
        ),
      ),
    );
  }
}
