import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final bool? isFav;
  const ProductCard({super.key, required this.image, this.isFav});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFav = false;

  @override
  void initState() {
    super.initState();
    isFav = widget.isFav ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Get.toNamed("/EditProductScreen");
        },
        child: SizedBox(
          // height: screenHeight(context) * 0.3,
          width: screenWidth(context) * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: screenWidth(context) * 0.44,
                width: screenWidth(context) * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isFav = !isFav;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: isFav
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.orange,
                                )
                              : const Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.orange,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              appSpaces.spaceForHeight10,
              SizedBox(
                width: 150,
                child: Text(
                  "White Off Shoulder Top",
                  style: appFonts.f13black,
                ),
              ),
              const SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amberAccent,
                  ),
                  Text(
                    "4.5",
                    style: appFonts.f13black,
                  ),
                ],
              ),
              const SizedBox(height: 7,),
              Text(
                "₹ 76.53",
                style: appFonts.f15wboldblack,
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
