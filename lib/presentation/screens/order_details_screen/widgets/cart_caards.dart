import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:flutter/material.dart';

class MyCartCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String size;
  final String price;
  final String? customButtonTitle;
  const MyCartCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.size,
      required this.price,
      this.customButtonTitle});

  @override
  State<MyCartCard> createState() => _MyCartCardState();
}

class _MyCartCardState extends State<MyCartCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(widget.imageUrl), fit: BoxFit.cover)),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: appFonts.f14w500black,
                ),
                appSpaces.spaceForHeight10,
                Text(
                  "size :${widget.size}",
                  style: appFonts.f13grey,
                ),
                appSpaces.spaceForHeight10,
                Text(
                  "₹${widget.price}",
                  style: appFonts.f15wboldblack,
                ),
              ],
            ),
          ],
        )
        // ListTile(
        //   leading: Container(
        //     width: 90,
        //     height: 90,
        //     child: ClipRRect(
        //         borderRadius: BorderRadius.circular(6),
        //         child: Image.asset(
        //           widget.imageUrl,
        //           fit: BoxFit.cover,
        //         )),
        //   ),
        //   title: Text(
        //     widget.title,
        //     style: appFonts.f14w500black,
        //   ),
        //   subtitle: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         "size :${widget.size}",
        //         style: appFonts.f13grey,
        //       ),
        //       const SizedBox(
        //         height: 5,
        //       ),
        //       Text(
        //         "₹${widget.price}",
        //         style: appFonts.f15wboldblack,
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
