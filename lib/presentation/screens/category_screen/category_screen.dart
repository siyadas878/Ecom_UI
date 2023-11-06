import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/widgets/container_icon.dart';
import 'package:clothi/presentation/widgets/search_bar_widget.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
            'Categories',
            style: appFonts.f16wBoldBlack,
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                appSpaces.spaceForHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     const SearchBarWidget(
                      prefix: Icon(CupertinoIcons.search),
                      hint: 'Search by category name',
                    ),
                    ContainerIcon(
                      icon: FontAwesomeIcons.sliders,
                      iconColor: Colors.white,
                      insideColor: appColors.primaryDark,
                    )
                  ],
                ),
                appSpaces.spaceForHeight20,
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: appColors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      appSpaces.spaceForHeight10,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10,vertical: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Category Name',
                              style: appFonts.f13grey,
                            ),
                            Text('Total Products', style: appFonts.f13grey),
                            const SizedBox()
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: screenHeight(context)*0.65,
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(radius: 20,foregroundImage: AssetImage(appImages.cImgs[index])),
                                        Text(
                                          ' Category Name',
                                          style: appFonts.f13black,
                                        ),
                                      ],
                                    ),
                                   const SizedBox(
                                      width: 50,
                                    ),
                                    Text('30', style: appFonts.f13black),
                                    const Spacer(),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon:const Icon(CupertinoIcons.pencil,color: Colors.blue,)),
                                        IconButton(
                                            onPressed: () {},
                                            icon:const Icon(CupertinoIcons.delete,color: Colors.red,)),
                                      ],
                                    ),
                                    const SizedBox()
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>const Divider(),
                            itemCount: appImages.cImgs.length),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('/AddCategoryScreen');
          },
          backgroundColor: appColors.primaryDark,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
